
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct skcipher_request {unsigned int cryptlen; TYPE_1__ base; int dst; int src; } ;
struct crypto_skcipher {int dummy; } ;
struct adiantum_tfm_ctx {int streamcipher; int blockcipher; } ;
struct TYPE_5__ {int streamcipher_req; } ;
struct TYPE_6__ {scalar_t__* words; int bytes; int bignum; } ;
struct adiantum_request_ctx {int enc; TYPE_2__ u; TYPE_3__ rbuf; int header_hash; } ;
typedef int le128 ;


 int BLOCKCIPHER_BLOCK_SIZE ;
 int BUILD_BUG_ON (int) ;
 int CHACHA_BLOCK_SIZE ;
 int EINVAL ;
 int XCHACHA_IV_SIZE ;
 int adiantum_finish (struct skcipher_request*) ;
 int adiantum_hash_header (struct skcipher_request*) ;
 int adiantum_hash_message (struct skcipher_request*,int ,int *) ;
 int adiantum_streamcipher_done ;
 scalar_t__ cpu_to_le32 (int) ;
 int crypto_cipher_encrypt_one (int ,int ,int ) ;
 struct adiantum_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 scalar_t__ crypto_skcipher_encrypt (int *) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int le128_add (int *,int *,int *) ;
 unsigned int round_up (unsigned int,int ) ;
 int scatterwalk_map_and_copy (int *,int ,unsigned int const,int,int ) ;
 struct adiantum_request_ctx* skcipher_request_ctx (struct skcipher_request*) ;
 int skcipher_request_set_callback (int *,int ,int ,struct skcipher_request*) ;
 int skcipher_request_set_crypt (int *,int ,int ,unsigned int,TYPE_3__*) ;
 int skcipher_request_set_tfm (int *,int ) ;

__attribute__((used)) static int adiantum_crypt(struct skcipher_request *req, bool enc)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 const struct adiantum_tfm_ctx *tctx = crypto_skcipher_ctx(tfm);
 struct adiantum_request_ctx *rctx = skcipher_request_ctx(req);
 const unsigned int bulk_len = req->cryptlen - BLOCKCIPHER_BLOCK_SIZE;
 unsigned int stream_len;
 le128 digest;
 int err;

 if (req->cryptlen < BLOCKCIPHER_BLOCK_SIZE)
  return -EINVAL;

 rctx->enc = enc;






 adiantum_hash_header(req);
 err = adiantum_hash_message(req, req->src, &digest);
 if (err)
  return err;
 le128_add(&digest, &digest, &rctx->header_hash);
 scatterwalk_map_and_copy(&rctx->rbuf.bignum, req->src,
     bulk_len, BLOCKCIPHER_BLOCK_SIZE, 0);
 le128_add(&rctx->rbuf.bignum, &rctx->rbuf.bignum, &digest);


 if (enc)
  crypto_cipher_encrypt_one(tctx->blockcipher, rctx->rbuf.bytes,
       rctx->rbuf.bytes);


 BUILD_BUG_ON(BLOCKCIPHER_BLOCK_SIZE != 16);
 BUILD_BUG_ON(XCHACHA_IV_SIZE != 32);
 rctx->rbuf.words[4] = cpu_to_le32(1);
 rctx->rbuf.words[5] = 0;
 rctx->rbuf.words[6] = 0;
 rctx->rbuf.words[7] = 0;
 stream_len = bulk_len;
 if (round_up(stream_len, CHACHA_BLOCK_SIZE) <= req->cryptlen)
  stream_len = round_up(stream_len, CHACHA_BLOCK_SIZE);

 skcipher_request_set_tfm(&rctx->u.streamcipher_req, tctx->streamcipher);
 skcipher_request_set_crypt(&rctx->u.streamcipher_req, req->src,
       req->dst, stream_len, &rctx->rbuf);
 skcipher_request_set_callback(&rctx->u.streamcipher_req,
          req->base.flags,
          adiantum_streamcipher_done, req);
 return crypto_skcipher_encrypt(&rctx->u.streamcipher_req) ?:
  adiantum_finish(req);
}
