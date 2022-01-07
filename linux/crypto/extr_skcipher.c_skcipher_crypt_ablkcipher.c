
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int complete; } ;
struct skcipher_request {int iv; int cryptlen; int dst; int src; TYPE_1__ base; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_ablkcipher {int dummy; } ;
typedef struct ablkcipher_request ablkcipher_request ;


 int ablkcipher_request_set_callback (struct ablkcipher_request*,int ,int ,int ) ;
 int ablkcipher_request_set_crypt (struct ablkcipher_request*,int ,int ,int ,int ) ;
 int ablkcipher_request_set_tfm (struct ablkcipher_request*,struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher** crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 struct ablkcipher_request* skcipher_request_ctx (struct skcipher_request*) ;
 int skcipher_request_flags (struct skcipher_request*) ;

__attribute__((used)) static int skcipher_crypt_ablkcipher(struct skcipher_request *req,
         int (*crypt)(struct ablkcipher_request *))
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_ablkcipher **ctx = crypto_skcipher_ctx(tfm);
 struct ablkcipher_request *subreq = skcipher_request_ctx(req);

 ablkcipher_request_set_tfm(subreq, *ctx);
 ablkcipher_request_set_callback(subreq, skcipher_request_flags(req),
     req->base.complete, req->base.data);
 ablkcipher_request_set_crypt(subreq, req->src, req->dst, req->cryptlen,
         req->iv);

 return crypt(subreq);
}
