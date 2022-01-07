
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chachapoly_req_ctx {int flags; scalar_t__ cryptlen; } ;
struct aead_request {scalar_t__ cryptlen; } ;


 scalar_t__ POLY1305_DIGEST_SIZE ;
 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 int poly_genkey (struct aead_request*) ;

__attribute__((used)) static int chachapoly_decrypt(struct aead_request *req)
{
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);

 rctx->cryptlen = req->cryptlen - POLY1305_DIGEST_SIZE;
 rctx->flags = aead_request_flags(req);
 return poly_genkey(req);
}
