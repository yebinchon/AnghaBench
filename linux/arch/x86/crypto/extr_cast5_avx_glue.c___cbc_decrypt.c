
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct cast5_ctx {int dummy; } ;


 unsigned int CAST5_BLOCK_SIZE ;
 unsigned int const CAST5_PARALLEL_BLOCKS ;
 int __cast5_decrypt (struct cast5_ctx*,int *,int *) ;
 int cast5_cbc_dec_16way (struct cast5_ctx*,int *,int *) ;

__attribute__((used)) static unsigned int __cbc_decrypt(struct cast5_ctx *ctx,
      struct skcipher_walk *walk)
{
 const unsigned int bsize = CAST5_BLOCK_SIZE;
 unsigned int nbytes = walk->nbytes;
 u64 *src = (u64 *)walk->src.virt.addr;
 u64 *dst = (u64 *)walk->dst.virt.addr;
 u64 last_iv;


 src += nbytes / bsize - 1;
 dst += nbytes / bsize - 1;

 last_iv = *src;


 if (nbytes >= bsize * CAST5_PARALLEL_BLOCKS) {
  do {
   nbytes -= bsize * (CAST5_PARALLEL_BLOCKS - 1);
   src -= CAST5_PARALLEL_BLOCKS - 1;
   dst -= CAST5_PARALLEL_BLOCKS - 1;

   cast5_cbc_dec_16way(ctx, (u8 *)dst, (u8 *)src);

   nbytes -= bsize;
   if (nbytes < bsize)
    goto done;

   *dst ^= *(src - 1);
   src -= 1;
   dst -= 1;
  } while (nbytes >= bsize * CAST5_PARALLEL_BLOCKS);
 }


 for (;;) {
  __cast5_decrypt(ctx, (u8 *)dst, (u8 *)src);

  nbytes -= bsize;
  if (nbytes < bsize)
   break;

  *dst ^= *(src - 1);
  src -= 1;
  dst -= 1;
 }

done:
 *dst ^= *(u64 *)walk->iv;
 *(u64 *)walk->iv = last_iv;

 return nbytes;
}
