
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 unsigned int crypto_cfb_bsize (struct crypto_skcipher*) ;
 int crypto_cfb_encrypt_inplace (struct skcipher_walk*,struct crypto_skcipher*) ;
 int crypto_cfb_encrypt_segment (struct skcipher_walk*,struct crypto_skcipher*) ;
 int crypto_cfb_final (struct skcipher_walk*,struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int skcipher_walk_done (struct skcipher_walk*,int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int crypto_cfb_encrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct skcipher_walk walk;
 unsigned int bsize = crypto_cfb_bsize(tfm);
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while (walk.nbytes >= bsize) {
  if (walk.src.virt.addr == walk.dst.virt.addr)
   err = crypto_cfb_encrypt_inplace(&walk, tfm);
  else
   err = crypto_cfb_encrypt_segment(&walk, tfm);
  err = skcipher_walk_done(&walk, err);
 }

 if (walk.nbytes) {
  crypto_cfb_final(&walk, tfm);
  err = skcipher_walk_done(&walk, 0);
 }

 return err;
}
