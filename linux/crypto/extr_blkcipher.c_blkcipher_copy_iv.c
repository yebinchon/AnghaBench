
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct blkcipher_walk {unsigned int walk_blocksize; unsigned int alignmask; unsigned int ivsize; int iv; scalar_t__ buffer; } ;


 unsigned int ALIGN (unsigned long,unsigned int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int * blkcipher_get_spot (int *,unsigned int) ;
 int crypto_tfm_ctx_alignment () ;
 scalar_t__ kmalloc (unsigned int,int ) ;
 unsigned int max (unsigned int,unsigned int) ;
 int memcpy (int *,int ,unsigned int) ;

__attribute__((used)) static inline int blkcipher_copy_iv(struct blkcipher_walk *walk)
{
 unsigned bs = walk->walk_blocksize;
 unsigned aligned_bs = ALIGN(bs, walk->alignmask + 1);
 unsigned int size = aligned_bs * 2 +
       walk->ivsize + max(aligned_bs, walk->ivsize) -
       (walk->alignmask + 1);
 u8 *iv;

 size += walk->alignmask & ~(crypto_tfm_ctx_alignment() - 1);
 walk->buffer = kmalloc(size, GFP_ATOMIC);
 if (!walk->buffer)
  return -ENOMEM;

 iv = (u8 *)ALIGN((unsigned long)walk->buffer, walk->alignmask + 1);
 iv = blkcipher_get_spot(iv, bs) + aligned_bs;
 iv = blkcipher_get_spot(iv, bs) + aligned_bs;
 iv = blkcipher_get_spot(iv, walk->ivsize);

 walk->iv = memcpy(iv, walk->iv, walk->ivsize);
 return 0;
}
