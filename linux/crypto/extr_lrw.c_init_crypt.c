
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct skcipher_request {int iv; int cryptlen; int dst; TYPE_1__ base; } ;
struct rctx {int t; struct skcipher_request subreq; } ;
struct priv {int table; int child; } ;


 int crypt_done ;
 struct priv* crypto_skcipher_ctx (int ) ;
 int crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int gf128mul_64k_bbe (int *,int ) ;
 int memcpy (int *,int ,int) ;
 struct rctx* skcipher_request_ctx (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,struct skcipher_request*) ;
 int skcipher_request_set_crypt (struct skcipher_request*,int ,int ,int ,int ) ;
 int skcipher_request_set_tfm (struct skcipher_request*,int ) ;

__attribute__((used)) static void init_crypt(struct skcipher_request *req)
{
 struct priv *ctx = crypto_skcipher_ctx(crypto_skcipher_reqtfm(req));
 struct rctx *rctx = skcipher_request_ctx(req);
 struct skcipher_request *subreq = &rctx->subreq;

 skcipher_request_set_tfm(subreq, ctx->child);
 skcipher_request_set_callback(subreq, req->base.flags, crypt_done, req);

 skcipher_request_set_crypt(subreq, req->dst, req->dst,
       req->cryptlen, req->iv);


 memcpy(&rctx->t, req->iv, sizeof(rctx->t));


 gf128mul_64k_bbe(&rctx->t, ctx->table);
}
