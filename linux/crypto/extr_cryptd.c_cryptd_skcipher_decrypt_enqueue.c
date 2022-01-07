
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int cryptd_skcipher_decrypt ;
 int cryptd_skcipher_enqueue (struct skcipher_request*,int ) ;

__attribute__((used)) static int cryptd_skcipher_decrypt_enqueue(struct skcipher_request *req)
{
 return cryptd_skcipher_enqueue(req, cryptd_skcipher_decrypt);
}
