
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int cbc_encrypt_one ;
 int crypto_cbc_encrypt_walk (struct skcipher_request*,int ) ;

__attribute__((used)) static int cbc_encrypt(struct skcipher_request *req)
{
 return crypto_cbc_encrypt_walk(req, cbc_encrypt_one);
}
