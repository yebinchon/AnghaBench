
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
struct TYPE_8__ {int addr; } ;
struct TYPE_7__ {TYPE_4__ virt; } ;
struct skcipher_walk {unsigned int nbytes; int iv; TYPE_2__ src; TYPE_3__ dst; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int key_dec; } ;


 unsigned int AES_BLOCK_SIZE ;
 int ce_aes_cbc_decrypt (int ,int ,int ,int ,unsigned int,int ) ;
 struct crypto_aes_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int num_rounds (struct crypto_aes_ctx*) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;

__attribute__((used)) static int cbc_decrypt_walk(struct skcipher_request *req,
       struct skcipher_walk *walk)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_aes_ctx *ctx = crypto_skcipher_ctx(tfm);
 unsigned int blocks;
 int err = 0;

 while ((blocks = (walk->nbytes / AES_BLOCK_SIZE))) {
  kernel_neon_begin();
  ce_aes_cbc_decrypt(walk->dst.virt.addr, walk->src.virt.addr,
       ctx->key_dec, num_rounds(ctx), blocks,
       walk->iv);
  kernel_neon_end();
  err = skcipher_walk_done(walk, walk->nbytes % AES_BLOCK_SIZE);
 }
 return err;
}
