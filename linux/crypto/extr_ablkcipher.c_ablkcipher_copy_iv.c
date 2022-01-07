
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned int ivsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;
struct ablkcipher_walk {unsigned int blocksize; int iv; scalar_t__ iv_buffer; } ;


 unsigned int ALIGN (unsigned long,unsigned int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int * ablkcipher_get_spot (int *,unsigned int) ;
 int crypto_tfm_ctx_alignment () ;
 scalar_t__ kmalloc (unsigned int,int ) ;
 unsigned int max (unsigned int,unsigned int) ;
 int memcpy (int *,int ,unsigned int) ;

__attribute__((used)) static inline int ablkcipher_copy_iv(struct ablkcipher_walk *walk,
         struct crypto_tfm *tfm,
         unsigned int alignmask)
{
 unsigned bs = walk->blocksize;
 unsigned int ivsize = tfm->crt_ablkcipher.ivsize;
 unsigned aligned_bs = ALIGN(bs, alignmask + 1);
 unsigned int size = aligned_bs * 2 + ivsize + max(aligned_bs, ivsize) -
       (alignmask + 1);
 u8 *iv;

 size += alignmask & ~(crypto_tfm_ctx_alignment() - 1);
 walk->iv_buffer = kmalloc(size, GFP_ATOMIC);
 if (!walk->iv_buffer)
  return -ENOMEM;

 iv = (u8 *)ALIGN((unsigned long)walk->iv_buffer, alignmask + 1);
 iv = ablkcipher_get_spot(iv, bs) + aligned_bs;
 iv = ablkcipher_get_spot(iv, bs) + aligned_bs;
 iv = ablkcipher_get_spot(iv, ivsize);

 walk->iv = memcpy(iv, walk->iv, ivsize);
 return 0;
}
