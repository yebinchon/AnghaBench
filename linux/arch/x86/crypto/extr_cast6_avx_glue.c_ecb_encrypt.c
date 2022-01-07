
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int cast6_enc ;
 int glue_ecb_req_128bit (int *,struct skcipher_request*) ;

__attribute__((used)) static int ecb_encrypt(struct skcipher_request *req)
{
 return glue_ecb_req_128bit(&cast6_enc, req);
}
