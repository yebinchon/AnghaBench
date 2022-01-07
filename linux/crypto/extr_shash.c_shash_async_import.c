
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
struct ahash_request {int dummy; } ;


 struct shash_desc* ahash_request_ctx (struct ahash_request*) ;
 struct crypto_shash** crypto_ahash_ctx (int ) ;
 int crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_shash_import (struct shash_desc*,void const*) ;

__attribute__((used)) static int shash_async_import(struct ahash_request *req, const void *in)
{
 struct crypto_shash **ctx = crypto_ahash_ctx(crypto_ahash_reqtfm(req));
 struct shash_desc *desc = ahash_request_ctx(req);

 desc->tfm = *ctx;

 return crypto_shash_import(desc, in);
}
