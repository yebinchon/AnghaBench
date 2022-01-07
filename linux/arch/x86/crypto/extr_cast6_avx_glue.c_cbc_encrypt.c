
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int GLUE_FUNC_CAST (int ) ;
 int __cast6_encrypt ;
 int glue_cbc_encrypt_req_128bit (int ,struct skcipher_request*) ;

__attribute__((used)) static int cbc_encrypt(struct skcipher_request *req)
{
 return glue_cbc_encrypt_req_128bit(GLUE_FUNC_CAST(__cast6_encrypt),
        req);
}
