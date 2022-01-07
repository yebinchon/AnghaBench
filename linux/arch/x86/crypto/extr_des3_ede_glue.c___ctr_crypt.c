
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
struct des3_ede_x86_ctx {int dummy; } ;
typedef int __be64 ;


 unsigned int DES3_EDE_BLOCK_SIZE ;
 int be64_to_cpu (int) ;
 int cpu_to_be64 (int ) ;
 int des3_ede_enc_blk (struct des3_ede_x86_ctx*,int *,int *) ;
 int des3_ede_enc_blk_3way (struct des3_ede_x86_ctx*,int *,int *) ;

__attribute__((used)) static unsigned int __ctr_crypt(struct des3_ede_x86_ctx *ctx,
    struct skcipher_walk *walk)
{
 unsigned int bsize = DES3_EDE_BLOCK_SIZE;
 unsigned int nbytes = walk->nbytes;
 __be64 *src = (__be64 *)walk->src.virt.addr;
 __be64 *dst = (__be64 *)walk->dst.virt.addr;
 u64 ctrblk = be64_to_cpu(*(__be64 *)walk->iv);
 __be64 ctrblocks[3];


 if (nbytes >= bsize * 3) {
  do {

   ctrblocks[0] = cpu_to_be64(ctrblk++);
   ctrblocks[1] = cpu_to_be64(ctrblk++);
   ctrblocks[2] = cpu_to_be64(ctrblk++);

   des3_ede_enc_blk_3way(ctx, (u8 *)ctrblocks,
           (u8 *)ctrblocks);

   dst[0] = src[0] ^ ctrblocks[0];
   dst[1] = src[1] ^ ctrblocks[1];
   dst[2] = src[2] ^ ctrblocks[2];

   src += 3;
   dst += 3;
  } while ((nbytes -= bsize * 3) >= bsize * 3);

  if (nbytes < bsize)
   goto done;
 }


 do {
  ctrblocks[0] = cpu_to_be64(ctrblk++);

  des3_ede_enc_blk(ctx, (u8 *)ctrblocks, (u8 *)ctrblocks);

  dst[0] = src[0] ^ ctrblocks[0];

  src += 1;
  dst += 1;
 } while ((nbytes -= bsize) >= bsize);

done:
 *(__be64 *)walk->iv = cpu_to_be64(ctrblk);
 return nbytes;
}
