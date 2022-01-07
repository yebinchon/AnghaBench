
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_engine {int dummy; } ;
struct crypto_async_request {int dummy; } ;


 int crypto_transfer_request (struct crypto_engine*,struct crypto_async_request*,int) ;

__attribute__((used)) static int crypto_transfer_request_to_engine(struct crypto_engine *engine,
          struct crypto_async_request *req)
{
 return crypto_transfer_request(engine, req, 1);
}
