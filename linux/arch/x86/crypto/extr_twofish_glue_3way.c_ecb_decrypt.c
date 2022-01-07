
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int glue_ecb_req_128bit (int *,struct skcipher_request*) ;
 int twofish_dec ;

__attribute__((used)) static int ecb_decrypt(struct skcipher_request *req)
{
 return glue_ecb_req_128bit(&twofish_dec, req);
}
