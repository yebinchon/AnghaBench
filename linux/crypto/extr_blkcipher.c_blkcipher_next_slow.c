
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {void* addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; int flags; int in; TYPE_4__ src; TYPE_2__ dst; scalar_t__ buffer; scalar_t__ page; } ;
struct blkcipher_desc {int dummy; } ;


 unsigned int ALIGN (unsigned long,unsigned int) ;
 int BLKCIPHER_WALK_SLOW ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 void* blkcipher_get_spot (int *,unsigned int) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,int ) ;
 int crypto_tfm_ctx_alignment () ;
 scalar_t__ kmalloc (unsigned int,int ) ;
 int scatterwalk_copychunks (void*,int *,unsigned int,int ) ;

__attribute__((used)) static inline int blkcipher_next_slow(struct blkcipher_desc *desc,
          struct blkcipher_walk *walk,
          unsigned int bsize,
          unsigned int alignmask)
{
 unsigned int n;
 unsigned aligned_bsize = ALIGN(bsize, alignmask + 1);

 if (walk->buffer)
  goto ok;

 walk->buffer = walk->page;
 if (walk->buffer)
  goto ok;

 n = aligned_bsize * 3 - (alignmask + 1) +
     (alignmask & ~(crypto_tfm_ctx_alignment() - 1));
 walk->buffer = kmalloc(n, GFP_ATOMIC);
 if (!walk->buffer)
  return blkcipher_walk_done(desc, walk, -ENOMEM);

ok:
 walk->dst.virt.addr = (u8 *)ALIGN((unsigned long)walk->buffer,
       alignmask + 1);
 walk->dst.virt.addr = blkcipher_get_spot(walk->dst.virt.addr, bsize);
 walk->src.virt.addr = blkcipher_get_spot(walk->dst.virt.addr +
       aligned_bsize, bsize);

 scatterwalk_copychunks(walk->src.virt.addr, &walk->in, bsize, 0);

 walk->nbytes = bsize;
 walk->flags |= BLKCIPHER_WALK_SLOW;

 return 0;
}
