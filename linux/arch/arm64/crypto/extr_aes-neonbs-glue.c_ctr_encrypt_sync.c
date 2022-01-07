
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int crypto_ctr_encrypt_walk (struct skcipher_request*,int ) ;
 int crypto_simd_usable () ;
 int ctr_encrypt (struct skcipher_request*) ;
 int ctr_encrypt_one ;

__attribute__((used)) static int ctr_encrypt_sync(struct skcipher_request *req)
{
 if (!crypto_simd_usable())
  return crypto_ctr_encrypt_walk(req, ctr_encrypt_one);

 return ctr_encrypt(req);
}
