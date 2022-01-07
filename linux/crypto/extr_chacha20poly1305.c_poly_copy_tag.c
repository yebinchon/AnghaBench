
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chachapoly_req_ctx {scalar_t__ cryptlen; int tag; } ;
struct aead_request {scalar_t__ assoclen; int dst; } ;


 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 int scatterwalk_map_and_copy (int ,int ,scalar_t__,int,int) ;

__attribute__((used)) static int poly_copy_tag(struct aead_request *req)
{
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);

 scatterwalk_map_and_copy(rctx->tag, req->dst,
     req->assoclen + rctx->cryptlen,
     sizeof(rctx->tag), 1);
 return 0;
}
