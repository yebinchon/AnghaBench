
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int ahash_request_ctx (struct ahash_request*) ;
 int shash_ahash_update (struct ahash_request*,int ) ;

__attribute__((used)) static int shash_async_update(struct ahash_request *req)
{
 return shash_ahash_update(req, ahash_request_ctx(req));
}
