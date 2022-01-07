
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
struct bf_ctx {int dummy; } ;


 unsigned int BF_BLOCK_SIZE ;
 int blowfish_dec_blk (struct bf_ctx*,int *,int *) ;
 int blowfish_dec_blk_4way (struct bf_ctx*,int *,int *) ;

__attribute__((used)) static unsigned int __cbc_decrypt(struct bf_ctx *ctx,
      struct skcipher_walk *walk)
{
 unsigned int bsize = BF_BLOCK_SIZE;
 unsigned int nbytes = walk->nbytes;
 u64 *src = (u64 *)walk->src.virt.addr;
 u64 *dst = (u64 *)walk->dst.virt.addr;
 u64 ivs[4 - 1];
 u64 last_iv;


 src += nbytes / bsize - 1;
 dst += nbytes / bsize - 1;

 last_iv = *src;


 if (nbytes >= bsize * 4) {
  do {
   nbytes -= bsize * 4 - bsize;
   src -= 4 - 1;
   dst -= 4 - 1;

   ivs[0] = src[0];
   ivs[1] = src[1];
   ivs[2] = src[2];

   blowfish_dec_blk_4way(ctx, (u8 *)dst, (u8 *)src);

   dst[1] ^= ivs[0];
   dst[2] ^= ivs[1];
   dst[3] ^= ivs[2];

   nbytes -= bsize;
   if (nbytes < bsize)
    goto done;

   *dst ^= *(src - 1);
   src -= 1;
   dst -= 1;
  } while (nbytes >= bsize * 4);
 }


 for (;;) {
  blowfish_dec_blk(ctx, (u8 *)dst, (u8 *)src);

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
