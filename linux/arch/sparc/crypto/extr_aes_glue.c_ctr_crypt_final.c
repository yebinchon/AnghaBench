
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct crypto_sparc64_aes_ctx {int * key; TYPE_3__* ops; } ;
struct TYPE_6__ {int * addr; } ;
struct TYPE_7__ {TYPE_1__ virt; } ;
struct TYPE_9__ {int * addr; } ;
struct TYPE_10__ {TYPE_4__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_2__ dst; TYPE_5__ src; int * iv; } ;
struct TYPE_8__ {int (* ecb_encrypt ) (int *,int const*,int *,int) ;} ;


 int AES_BLOCK_SIZE ;
 int crypto_inc (int *,int) ;
 int crypto_xor_cpy (int *,int *,int *,unsigned int) ;
 int stub1 (int *,int const*,int *,int) ;

__attribute__((used)) static void ctr_crypt_final(struct crypto_sparc64_aes_ctx *ctx,
       struct blkcipher_walk *walk)
{
 u8 *ctrblk = walk->iv;
 u64 keystream[AES_BLOCK_SIZE / sizeof(u64)];
 u8 *src = walk->src.virt.addr;
 u8 *dst = walk->dst.virt.addr;
 unsigned int nbytes = walk->nbytes;

 ctx->ops->ecb_encrypt(&ctx->key[0], (const u64 *)ctrblk,
         keystream, AES_BLOCK_SIZE);
 crypto_xor_cpy(dst, (u8 *) keystream, src, nbytes);
 crypto_inc(ctrblk, AES_BLOCK_SIZE);
}
