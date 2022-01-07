
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkcipher_walk {int nbytes; scalar_t__ total; int flags; scalar_t__ iv; scalar_t__ buffer; scalar_t__ page; int ivsize; int out; int in; } ;
struct blkcipher_desc {scalar_t__ info; int flags; } ;


 int BLKCIPHER_WALK_SLOW ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int blkcipher_done_fast (struct blkcipher_walk*,unsigned int) ;
 int blkcipher_done_slow (struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_next (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypto_yield (int ) ;
 int free_page (unsigned long) ;
 int kfree (scalar_t__) ;
 scalar_t__ likely (int) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int scatterwalk_done (int *,int,int) ;
 scalar_t__ unlikely (int) ;

int blkcipher_walk_done(struct blkcipher_desc *desc,
   struct blkcipher_walk *walk, int err)
{
 unsigned int n;
 bool more;

 if (unlikely(err < 0))
  goto finish;

 n = walk->nbytes - err;
 walk->total -= n;
 more = (walk->total != 0);

 if (likely(!(walk->flags & BLKCIPHER_WALK_SLOW))) {
  blkcipher_done_fast(walk, n);
 } else {
  if (WARN_ON(err)) {

   err = -EINVAL;
   goto finish;
  }
  blkcipher_done_slow(walk, n);
 }

 scatterwalk_done(&walk->in, 0, more);
 scatterwalk_done(&walk->out, 1, more);

 if (more) {
  crypto_yield(desc->flags);
  return blkcipher_walk_next(desc, walk);
 }
 err = 0;
finish:
 walk->nbytes = 0;
 if (walk->iv != desc->info)
  memcpy(desc->info, walk->iv, walk->ivsize);
 if (walk->buffer != walk->page)
  kfree(walk->buffer);
 if (walk->page)
  free_page((unsigned long)walk->page);
 return err;
}
