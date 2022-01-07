
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {int iv; int nbytes; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int cryptlen; int iv; struct scatterlist* dst; struct scatterlist* src; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int key_dec; } ;


 int AES_BLOCK_SIZE ;
 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int cbc_decrypt_walk (struct skcipher_request*,struct skcipher_walk*) ;
 int ce_aes_cbc_cts_decrypt (int ,int ,int ,int ,int ,int ) ;
 struct crypto_aes_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int num_rounds (struct crypto_aes_ctx*) ;
 struct scatterlist* scatterwalk_ffwd (struct scatterlist*,struct scatterlist*,int) ;
 int skcipher_request_flags (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int *,int *) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,int,int ) ;
 int skcipher_request_set_tfm (struct skcipher_request*,struct crypto_skcipher*) ;
 int skcipher_walk_done (struct skcipher_walk*,int ) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int cts_cbc_decrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 int cbc_blocks = DIV_ROUND_UP(req->cryptlen, AES_BLOCK_SIZE) - 2;
 struct scatterlist *src = req->src, *dst = req->dst;
 struct scatterlist sg_src[2], sg_dst[2];
 struct skcipher_request subreq;
 struct skcipher_walk walk;
 int err;

 skcipher_request_set_tfm(&subreq, tfm);
 skcipher_request_set_callback(&subreq, skcipher_request_flags(req),
          ((void*)0), ((void*)0));

 if (req->cryptlen <= AES_BLOCK_SIZE) {
  if (req->cryptlen < AES_BLOCK_SIZE)
   return -EINVAL;
  cbc_blocks = 1;
 }

 if (cbc_blocks > 0) {
  skcipher_request_set_crypt(&subreq, req->src, req->dst,
        cbc_blocks * AES_BLOCK_SIZE,
        req->iv);

  err = skcipher_walk_virt(&walk, &subreq, 0) ?:
        cbc_decrypt_walk(&subreq, &walk);
  if (err)
   return err;

  if (req->cryptlen == AES_BLOCK_SIZE)
   return 0;

  dst = src = scatterwalk_ffwd(sg_src, req->src, subreq.cryptlen);
  if (req->dst != req->src)
   dst = scatterwalk_ffwd(sg_dst, req->dst,
            subreq.cryptlen);
 }


 skcipher_request_set_crypt(&subreq, src, dst,
       req->cryptlen - cbc_blocks * AES_BLOCK_SIZE,
       req->iv);

 err = skcipher_walk_virt(&walk, &subreq, 0);
 if (err)
  return err;

 kernel_neon_begin();
 ce_aes_cbc_cts_decrypt(walk.dst.virt.addr, walk.src.virt.addr,
          ctx->key_dec, num_rounds(ctx), walk.nbytes,
          walk.iv);
 kernel_neon_end();

 return skcipher_walk_done(&walk, 0);
}
