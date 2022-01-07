
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tag ;
struct chachapoly_req_ctx {int tag; scalar_t__ cryptlen; } ;
struct aead_request {scalar_t__ assoclen; int src; } ;


 int EBADMSG ;
 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 scalar_t__ crypto_memneq (int *,int ,int) ;
 int scatterwalk_map_and_copy (int *,int ,scalar_t__,int,int ) ;

__attribute__((used)) static int poly_verify_tag(struct aead_request *req)
{
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 u8 tag[sizeof(rctx->tag)];

 scatterwalk_map_and_copy(tag, req->src,
     req->assoclen + rctx->cryptlen,
     sizeof(tag), 0);
 if (crypto_memneq(tag, rctx->tag, sizeof(tag)))
  return -EBADMSG;
 return 0;
}
