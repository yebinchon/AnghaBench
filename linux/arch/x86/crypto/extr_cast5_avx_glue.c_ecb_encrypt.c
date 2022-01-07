
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int ecb_crypt (struct skcipher_request*,int) ;

__attribute__((used)) static int ecb_encrypt(struct skcipher_request *req)
{
 return ecb_crypt(req, 1);
}
