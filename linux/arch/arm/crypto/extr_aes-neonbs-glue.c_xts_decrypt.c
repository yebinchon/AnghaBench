
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int __xts_crypt (struct skcipher_request*,int,int ) ;
 int aesbs_xts_decrypt ;

__attribute__((used)) static int xts_decrypt(struct skcipher_request *req)
{
 return __xts_crypt(req, 0, aesbs_xts_decrypt);
}
