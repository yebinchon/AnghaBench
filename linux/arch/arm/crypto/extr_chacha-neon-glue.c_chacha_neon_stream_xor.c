
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; unsigned int total; TYPE_4__ src; TYPE_2__ dst; int stride; } ;
struct skcipher_request {int dummy; } ;
struct chacha_ctx {int nrounds; } ;


 int chacha_doneon (int *,int ,int ,unsigned int,int ) ;
 int crypto_chacha_init (int *,struct chacha_ctx const*,int const*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 unsigned int round_down (unsigned int,int ) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int chacha_neon_stream_xor(struct skcipher_request *req,
      const struct chacha_ctx *ctx, const u8 *iv)
{
 struct skcipher_walk walk;
 u32 state[16];
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 crypto_chacha_init(state, ctx, iv);

 while (walk.nbytes > 0) {
  unsigned int nbytes = walk.nbytes;

  if (nbytes < walk.total)
   nbytes = round_down(nbytes, walk.stride);

  kernel_neon_begin();
  chacha_doneon(state, walk.dst.virt.addr, walk.src.virt.addr,
         nbytes, ctx->nrounds);
  kernel_neon_end();
  err = skcipher_walk_done(&walk, walk.nbytes - nbytes);
 }

 return err;
}
