
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int __ecb_crypt (struct skcipher_request*,int ) ;
 int aesbs_ecb_decrypt ;

__attribute__((used)) static int ecb_decrypt(struct skcipher_request *req)
{
 return __ecb_crypt(req, aesbs_ecb_decrypt);
}
