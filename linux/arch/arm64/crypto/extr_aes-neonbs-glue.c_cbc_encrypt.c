
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int addr; } ;
struct TYPE_9__ {TYPE_3__ virt; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_7__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; int iv; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_10__ {int rounds; } ;
struct aesbs_cbc_ctx {TYPE_5__ key; int enc; } ;


 unsigned int AES_BLOCK_SIZE ;
 struct aesbs_cbc_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 int neon_aes_cbc_encrypt (int ,int ,int ,int ,unsigned int,int ) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int cbc_encrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct aesbs_cbc_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct skcipher_walk walk;
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while (walk.nbytes >= AES_BLOCK_SIZE) {
  unsigned int blocks = walk.nbytes / AES_BLOCK_SIZE;


  kernel_neon_begin();
  neon_aes_cbc_encrypt(walk.dst.virt.addr, walk.src.virt.addr,
         ctx->enc, ctx->key.rounds, blocks,
         walk.iv);
  kernel_neon_end();
  err = skcipher_walk_done(&walk, walk.nbytes % AES_BLOCK_SIZE);
 }
 return err;
}
