
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; int * iv; } ;
struct des3_ede_x86_ctx {int dummy; } ;


 int DES3_EDE_BLOCK_SIZE ;
 int crypto_inc (int *,int) ;
 int crypto_xor_cpy (int *,int *,int *,unsigned int) ;
 int des3_ede_enc_blk (struct des3_ede_x86_ctx*,int *,int *) ;

__attribute__((used)) static void ctr_crypt_final(struct des3_ede_x86_ctx *ctx,
       struct skcipher_walk *walk)
{
 u8 *ctrblk = walk->iv;
 u8 keystream[DES3_EDE_BLOCK_SIZE];
 u8 *src = walk->src.virt.addr;
 u8 *dst = walk->dst.virt.addr;
 unsigned int nbytes = walk->nbytes;

 des3_ede_enc_blk(ctx, keystream, ctrblk);
 crypto_xor_cpy(dst, keystream, src, nbytes);

 crypto_inc(ctrblk, DES3_EDE_BLOCK_SIZE);
}
