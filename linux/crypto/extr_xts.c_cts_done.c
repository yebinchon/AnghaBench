
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct rctx {int tail; int t; } ;
struct crypto_async_request {struct skcipher_request* data; } ;
typedef int le128 ;


 int XTS_BLOCK_SIZE ;
 int le128_xor (int *,int *,int *) ;
 int scatterwalk_map_and_copy (int *,int ,int ,int ,int) ;
 int skcipher_request_complete (struct skcipher_request*,int) ;
 struct rctx* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static void cts_done(struct crypto_async_request *areq, int err)
{
 struct skcipher_request *req = areq->data;
 le128 b;

 if (!err) {
  struct rctx *rctx = skcipher_request_ctx(req);

  scatterwalk_map_and_copy(&b, rctx->tail, 0, XTS_BLOCK_SIZE, 0);
  le128_xor(&b, &rctx->t, &b);
  scatterwalk_map_and_copy(&b, rctx->tail, 0, XTS_BLOCK_SIZE, 1);
 }

 skcipher_request_complete(req, err);
}
