
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct ghash_desc_ctx {int dummy; } ;
struct ahash_request {int dummy; } ;


 struct ahash_request* ahash_request_ctx (struct ahash_request*) ;
 struct shash_desc* cryptd_shash_desc (struct ahash_request*) ;
 int ghash_async_init (struct ahash_request*) ;
 int memcpy (struct ghash_desc_ctx*,void const*,int) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_async_import(struct ahash_request *req, const void *in)
{
 struct ahash_request *cryptd_req = ahash_request_ctx(req);
 struct shash_desc *desc = cryptd_shash_desc(cryptd_req);
 struct ghash_desc_ctx *dctx = shash_desc_ctx(desc);

 ghash_async_init(req);
 memcpy(dctx, in, sizeof(*dctx));
 return 0;

}
