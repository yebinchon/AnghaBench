
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int essiv_skcipher_crypt (struct skcipher_request*,int) ;

__attribute__((used)) static int essiv_skcipher_decrypt(struct skcipher_request *req)
{
 return essiv_skcipher_crypt(req, 0);
}
