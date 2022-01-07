
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct scatterlist {int dummy; } ;
struct des_sparc64_ctx {int * encrypt_expkey; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int flags; int tfm; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 unsigned int DES_BLOCK_MASK ;
 int DES_BLOCK_SIZE ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 struct des_sparc64_ctx* crypto_blkcipher_ctx (int ) ;
 int des_sparc64_cbc_encrypt (int const*,int *,unsigned int,int *) ;
 int des_sparc64_load_keys (int *) ;
 int fprs_write (int ) ;
 scalar_t__ likely (unsigned int) ;

__attribute__((used)) static int cbc_encrypt(struct blkcipher_desc *desc,
         struct scatterlist *dst, struct scatterlist *src,
         unsigned int nbytes)
{
 struct des_sparc64_ctx *ctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk walk;
 int err;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 err = blkcipher_walk_virt(desc, &walk);
 desc->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

 des_sparc64_load_keys(&ctx->encrypt_expkey[0]);
 while ((nbytes = walk.nbytes)) {
  unsigned int block_len = nbytes & DES_BLOCK_MASK;

  if (likely(block_len)) {
   des_sparc64_cbc_encrypt((const u64 *)walk.src.virt.addr,
      (u64 *) walk.dst.virt.addr,
      block_len, (u64 *) walk.iv);
  }
  nbytes &= DES_BLOCK_SIZE - 1;
  err = blkcipher_walk_done(desc, &walk, nbytes);
 }
 fprs_write(0);
 return err;
}
