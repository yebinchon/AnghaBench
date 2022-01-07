
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int base; } ;
struct crypto_engine {int dummy; } ;


 int crypto_transfer_request_to_engine (struct crypto_engine*,int *) ;

int crypto_transfer_skcipher_request_to_engine(struct crypto_engine *engine,
            struct skcipher_request *req)
{
 return crypto_transfer_request_to_engine(engine, &req->base);
}
