
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_engine {int dummy; } ;
struct ahash_request {int base; } ;


 void crypto_finalize_request (struct crypto_engine*,int *,int) ;

void crypto_finalize_hash_request(struct crypto_engine *engine,
      struct ahash_request *req, int err)
{
 return crypto_finalize_request(engine, &req->base, err);
}
