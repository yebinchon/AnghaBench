
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int crypto4xx_ctr_crypt (struct skcipher_request*,int) ;

int crypto4xx_decrypt_ctr(struct skcipher_request *req)
{
 return crypto4xx_ctr_crypt(req, 0);
}
