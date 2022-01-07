
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chachapoly_req_ctx {int flags; int cryptlen; } ;
struct aead_request {int cryptlen; } ;


 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 int chacha_encrypt (struct aead_request*) ;

__attribute__((used)) static int chachapoly_encrypt(struct aead_request *req)
{
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);

 rctx->cryptlen = req->cryptlen;
 rctx->flags = aead_request_flags(req);
 return chacha_encrypt(req);
}
