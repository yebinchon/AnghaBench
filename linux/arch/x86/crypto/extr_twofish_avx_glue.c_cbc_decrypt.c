
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int glue_cbc_decrypt_req_128bit (int *,struct skcipher_request*) ;
 int twofish_dec_cbc ;

__attribute__((used)) static int cbc_decrypt(struct skcipher_request *req)
{
 return glue_cbc_decrypt_req_128bit(&twofish_dec_cbc, req);
}
