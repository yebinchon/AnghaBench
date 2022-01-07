
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct skcipher_request {int cryptlen; TYPE_1__ base; int src; int dst; } ;
struct rctx {int tail; int t; int sg; struct skcipher_request subreq; } ;
struct priv {int child; } ;
typedef int le128 ;


 int XTS_BLOCK_SIZE ;
 struct priv* crypto_skcipher_ctx (int ) ;
 int crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int cts_done ;
 int le128_xor (int *,int *,int *) ;
 int memcpy (int *,int *,int) ;
 int scatterwalk_ffwd (int ,int ,int) ;
 int scatterwalk_map_and_copy (int *,int ,int,int,int) ;
 struct rctx* skcipher_request_ctx (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,struct skcipher_request*) ;
 int skcipher_request_set_crypt (struct skcipher_request*,int ,int ,int,int *) ;
 int skcipher_request_set_tfm (struct skcipher_request*,int ) ;

__attribute__((used)) static int cts_final(struct skcipher_request *req,
       int (*crypt)(struct skcipher_request *req))
{
 struct priv *ctx = crypto_skcipher_ctx(crypto_skcipher_reqtfm(req));
 int offset = req->cryptlen & ~(XTS_BLOCK_SIZE - 1);
 struct rctx *rctx = skcipher_request_ctx(req);
 struct skcipher_request *subreq = &rctx->subreq;
 int tail = req->cryptlen % XTS_BLOCK_SIZE;
 le128 b[2];
 int err;

 rctx->tail = scatterwalk_ffwd(rctx->sg, req->dst,
          offset - XTS_BLOCK_SIZE);

 scatterwalk_map_and_copy(b, rctx->tail, 0, XTS_BLOCK_SIZE, 0);
 memcpy(b + 1, b, tail);
 scatterwalk_map_and_copy(b, req->src, offset, tail, 0);

 le128_xor(b, &rctx->t, b);

 scatterwalk_map_and_copy(b, rctx->tail, 0, XTS_BLOCK_SIZE + tail, 1);

 skcipher_request_set_tfm(subreq, ctx->child);
 skcipher_request_set_callback(subreq, req->base.flags, cts_done, req);
 skcipher_request_set_crypt(subreq, rctx->tail, rctx->tail,
       XTS_BLOCK_SIZE, ((void*)0));

 err = crypt(subreq);
 if (err)
  return err;

 scatterwalk_map_and_copy(b, rctx->tail, 0, XTS_BLOCK_SIZE, 0);
 le128_xor(b, &rctx->t, b);
 scatterwalk_map_and_copy(b, rctx->tail, 0, XTS_BLOCK_SIZE, 1);

 return 0;
}
