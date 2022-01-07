
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ablkcipher_walk {unsigned int nbytes; int flags; int in; } ;
struct ablkcipher_request {int dummy; } ;
struct ablkcipher_buffer {unsigned int len; void* data; } ;


 int ABLKCIPHER_WALK_SLOW ;
 unsigned int ALIGN (unsigned long,unsigned int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 void* ablkcipher_get_spot (void*,unsigned int) ;
 int ablkcipher_queue_write (struct ablkcipher_walk*,struct ablkcipher_buffer*) ;
 int ablkcipher_walk_done (struct ablkcipher_request*,struct ablkcipher_walk*,int ) ;
 int crypto_tfm_ctx_alignment () ;
 struct ablkcipher_buffer* kmalloc (unsigned int,int ) ;
 int scatterwalk_copychunks (void*,int *,unsigned int,int ) ;

__attribute__((used)) static inline int ablkcipher_next_slow(struct ablkcipher_request *req,
           struct ablkcipher_walk *walk,
           unsigned int bsize,
           unsigned int alignmask,
           void **src_p, void **dst_p)
{
 unsigned aligned_bsize = ALIGN(bsize, alignmask + 1);
 struct ablkcipher_buffer *p;
 void *src, *dst, *base;
 unsigned int n;

 n = ALIGN(sizeof(struct ablkcipher_buffer), alignmask + 1);
 n += (aligned_bsize * 3 - (alignmask + 1) +
       (alignmask & ~(crypto_tfm_ctx_alignment() - 1)));

 p = kmalloc(n, GFP_ATOMIC);
 if (!p)
  return ablkcipher_walk_done(req, walk, -ENOMEM);

 base = p + 1;

 dst = (u8 *)ALIGN((unsigned long)base, alignmask + 1);
 src = dst = ablkcipher_get_spot(dst, bsize);

 p->len = bsize;
 p->data = dst;

 scatterwalk_copychunks(src, &walk->in, bsize, 0);

 ablkcipher_queue_write(walk, p);

 walk->nbytes = bsize;
 walk->flags |= ABLKCIPHER_WALK_SLOW;

 *src_p = src;
 *dst_p = dst;

 return 0;
}
