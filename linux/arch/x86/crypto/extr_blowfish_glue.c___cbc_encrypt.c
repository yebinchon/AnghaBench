
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
 int blowfish_enc_blk (struct bf_ctx*,int *,int *) ;

__attribute__((used)) static unsigned int __cbc_encrypt(struct bf_ctx *ctx,
      struct skcipher_walk *walk)
{
 unsigned int bsize = BF_BLOCK_SIZE;
 unsigned int nbytes = walk->nbytes;
 u64 *src = (u64 *)walk->src.virt.addr;
 u64 *dst = (u64 *)walk->dst.virt.addr;
 u64 *iv = (u64 *)walk->iv;

 do {
  *dst = *src ^ *iv;
  blowfish_enc_blk(ctx, (u8 *)dst, (u8 *)dst);
  iv = dst;

  src += 1;
  dst += 1;
  nbytes -= bsize;
 } while (nbytes >= bsize);

 *(u64 *)walk->iv = *iv;
 return nbytes;
}
