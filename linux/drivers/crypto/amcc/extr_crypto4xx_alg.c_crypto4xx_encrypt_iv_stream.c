
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int AES_IV_SIZE ;
 int crypto4xx_crypt (struct skcipher_request*,int ,int,int) ;

int crypto4xx_encrypt_iv_stream(struct skcipher_request *req)
{
 return crypto4xx_crypt(req, AES_IV_SIZE, 0, 0);
}
