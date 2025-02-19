
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_2__ src; TYPE_4__ dst; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int dummy; } ;


 unsigned int AES_BLOCK_MASK ;
 int AES_BLOCK_SIZE ;
 struct crypto_aes_ctx* aes_ctx (int ) ;
 int aesni_ecb_dec (struct crypto_aes_ctx*,int ,int ,unsigned int) ;
 int crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int ecb_decrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_aes_ctx *ctx = aes_ctx(crypto_skcipher_ctx(tfm));
 struct skcipher_walk walk;
 unsigned int nbytes;
 int err;

 err = skcipher_walk_virt(&walk, req, 1);

 kernel_fpu_begin();
 while ((nbytes = walk.nbytes)) {
  aesni_ecb_dec(ctx, walk.dst.virt.addr, walk.src.virt.addr,
         nbytes & AES_BLOCK_MASK);
  nbytes &= AES_BLOCK_SIZE - 1;
  err = skcipher_walk_done(&walk, nbytes);
 }
 kernel_fpu_end();

 return err;
}
