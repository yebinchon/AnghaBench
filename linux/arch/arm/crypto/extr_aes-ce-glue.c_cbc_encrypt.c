
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {int dummy; } ;
struct skcipher_request {int dummy; } ;


 int cbc_encrypt_walk (struct skcipher_request*,struct skcipher_walk*) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int cbc_encrypt(struct skcipher_request *req)
{
 struct skcipher_walk walk;
 int err;

 err = skcipher_walk_virt(&walk, req, 0);
 if (err)
  return err;
 return cbc_encrypt_walk(req, &walk);
}
