
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct ppc_aes_ctx {int rounds; int key_dec; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; int iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct blkcipher_desc {int flags; int tfm; } ;


 int AES_BLOCK_SIZE ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 unsigned int MAX_BYTES ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 struct ppc_aes_ctx* crypto_blkcipher_ctx (int ) ;
 int ppc_decrypt_cbc (int ,int ,int ,int ,unsigned int,int ) ;
 int spe_begin () ;
 int spe_end () ;

__attribute__((used)) static int ppc_cbc_decrypt(struct blkcipher_desc *desc, struct scatterlist *dst,
      struct scatterlist *src, unsigned int nbytes)
{
 struct ppc_aes_ctx *ctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk walk;
 unsigned int ubytes;
 int err;

 desc->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;
 blkcipher_walk_init(&walk, dst, src, nbytes);
 err = blkcipher_walk_virt(desc, &walk);

 while ((nbytes = walk.nbytes)) {
  ubytes = nbytes > MAX_BYTES ?
    nbytes - MAX_BYTES : nbytes & (AES_BLOCK_SIZE - 1);
  nbytes -= ubytes;

  spe_begin();
  ppc_decrypt_cbc(walk.dst.virt.addr, walk.src.virt.addr,
    ctx->key_dec, ctx->rounds, nbytes, walk.iv);
  spe_end();

  err = blkcipher_walk_done(desc, &walk, ubytes);
 }

 return err;
}
