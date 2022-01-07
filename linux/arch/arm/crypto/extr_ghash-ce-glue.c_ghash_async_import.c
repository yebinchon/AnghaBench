
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
struct ghash_async_ctx {int cryptd_tfm; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 struct ahash_request* ahash_request_ctx (struct ahash_request*) ;
 int cryptd_ahash_child (int ) ;
 struct shash_desc* cryptd_shash_desc (struct ahash_request*) ;
 struct ghash_async_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_shash_import (struct shash_desc*,void const*) ;

__attribute__((used)) static int ghash_async_import(struct ahash_request *req, const void *in)
{
 struct ahash_request *cryptd_req = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct ghash_async_ctx *ctx = crypto_ahash_ctx(tfm);
 struct shash_desc *desc = cryptd_shash_desc(cryptd_req);

 desc->tfm = cryptd_ahash_child(ctx->cryptd_tfm);

 return crypto_shash_import(desc, in);
}
