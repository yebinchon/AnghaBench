
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct ghash_desc_ctx {int dummy; } ;
struct ahash_request {int dummy; } ;


 struct ahash_request* ahash_request_ctx (struct ahash_request*) ;
 struct shash_desc* cryptd_shash_desc (struct ahash_request*) ;
 int memcpy (void*,struct ghash_desc_ctx*,int) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_async_export(struct ahash_request *req, void *out)
{
 struct ahash_request *cryptd_req = ahash_request_ctx(req);
 struct shash_desc *desc = cryptd_shash_desc(cryptd_req);
 struct ghash_desc_ctx *dctx = shash_desc_ctx(desc);

 memcpy(out, dctx, sizeof(*dctx));
 return 0;

}
