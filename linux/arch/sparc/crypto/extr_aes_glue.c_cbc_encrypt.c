
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct scatterlist {int dummy; } ;
struct crypto_sparc64_aes_ctx {int * key; TYPE_1__* ops; } ;
struct TYPE_9__ {scalar_t__ addr; } ;
struct TYPE_10__ {TYPE_4__ virt; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_2__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_5__ dst; TYPE_3__ src; } ;
struct blkcipher_desc {int flags; int tfm; } ;
struct TYPE_6__ {int (* cbc_encrypt ) (int *,int const*,int *,unsigned int,int *) ;int (* load_encrypt_keys ) (int *) ;} ;


 unsigned int AES_BLOCK_MASK ;
 int AES_BLOCK_SIZE ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 struct crypto_sparc64_aes_ctx* crypto_blkcipher_ctx (int ) ;
 int fprs_write (int ) ;
 scalar_t__ likely (unsigned int) ;
 int stub1 (int *) ;
 int stub2 (int *,int const*,int *,unsigned int,int *) ;

__attribute__((used)) static int cbc_encrypt(struct blkcipher_desc *desc,
         struct scatterlist *dst, struct scatterlist *src,
         unsigned int nbytes)
{
 struct crypto_sparc64_aes_ctx *ctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk walk;
 int err;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 err = blkcipher_walk_virt(desc, &walk);
 desc->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;

 ctx->ops->load_encrypt_keys(&ctx->key[0]);
 while ((nbytes = walk.nbytes)) {
  unsigned int block_len = nbytes & AES_BLOCK_MASK;

  if (likely(block_len)) {
   ctx->ops->cbc_encrypt(&ctx->key[0],
           (const u64 *)walk.src.virt.addr,
           (u64 *) walk.dst.virt.addr,
           block_len, (u64 *) walk.iv);
  }
  nbytes &= AES_BLOCK_SIZE - 1;
  err = blkcipher_walk_done(desc, &walk, nbytes);
 }
 fprs_write(0);
 return err;
}
