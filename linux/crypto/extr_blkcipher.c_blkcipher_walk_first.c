
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sg; } ;
struct blkcipher_walk {unsigned long alignmask; int * page; TYPE_1__ out; TYPE_1__ in; scalar_t__ iv; int * buffer; int total; int nbytes; } ;
struct blkcipher_desc {scalar_t__ info; } ;


 int EDEADLK ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int blkcipher_copy_iv (struct blkcipher_walk*) ;
 int blkcipher_walk_next (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int in_irq () ;
 int scatterwalk_start (TYPE_1__*,int ) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static int blkcipher_walk_first(struct blkcipher_desc *desc,
    struct blkcipher_walk *walk)
{
 if (WARN_ON_ONCE(in_irq()))
  return -EDEADLK;

 walk->iv = desc->info;
 walk->nbytes = walk->total;
 if (unlikely(!walk->total))
  return 0;

 walk->buffer = ((void*)0);
 if (unlikely(((unsigned long)walk->iv & walk->alignmask))) {
  int err = blkcipher_copy_iv(walk);
  if (err)
   return err;
 }

 scatterwalk_start(&walk->in, walk->in.sg);
 scatterwalk_start(&walk->out, walk->out.sg);
 walk->page = ((void*)0);

 return blkcipher_walk_next(desc, walk);
}
