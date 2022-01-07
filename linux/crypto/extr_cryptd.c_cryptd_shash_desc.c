
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct cryptd_hash_request_ctx {struct shash_desc desc; } ;
struct ahash_request {int dummy; } ;


 struct cryptd_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;

struct shash_desc *cryptd_shash_desc(struct ahash_request *req)
{
 struct cryptd_hash_request_ctx *rctx = ahash_request_ctx(req);
 return &rctx->desc;
}
