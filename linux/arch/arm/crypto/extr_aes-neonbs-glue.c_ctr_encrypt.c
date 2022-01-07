
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {int nbytes; int total; int stride; TYPE_4__ src; TYPE_2__ dst; int iv; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct aesbs_ctx {int rounds; int rk; } ;


 int AES_BLOCK_SIZE ;
 int aesbs_ctr_encrypt (int *,int *,int ,int ,unsigned int,int ,int *) ;
 struct aesbs_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int crypto_xor_cpy (int *,int *,int *,int) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 unsigned int round_down (unsigned int,int) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int ctr_encrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct aesbs_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct skcipher_walk walk;
 u8 buf[AES_BLOCK_SIZE];
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while (walk.nbytes > 0) {
  unsigned int blocks = walk.nbytes / AES_BLOCK_SIZE;
  u8 *final = (walk.total % AES_BLOCK_SIZE) ? buf : ((void*)0);

  if (walk.nbytes < walk.total) {
   blocks = round_down(blocks,
         walk.stride / AES_BLOCK_SIZE);
   final = ((void*)0);
  }

  kernel_neon_begin();
  aesbs_ctr_encrypt(walk.dst.virt.addr, walk.src.virt.addr,
      ctx->rk, ctx->rounds, blocks, walk.iv, final);
  kernel_neon_end();

  if (final) {
   u8 *dst = walk.dst.virt.addr + blocks * AES_BLOCK_SIZE;
   u8 *src = walk.src.virt.addr + blocks * AES_BLOCK_SIZE;

   crypto_xor_cpy(dst, src, final,
           walk.total % AES_BLOCK_SIZE);

   err = skcipher_walk_done(&walk, 0);
   break;
  }
  err = skcipher_walk_done(&walk,
      walk.nbytes - blocks * AES_BLOCK_SIZE);
 }

 return err;
}
