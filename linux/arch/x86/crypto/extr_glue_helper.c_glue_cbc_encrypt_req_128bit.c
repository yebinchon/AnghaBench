
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u128 ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
typedef int (* common_glue_func_t ) (void*,int *,int *) ;


 void* crypto_skcipher_ctx (int ) ;
 int crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;
 int u128_xor (int *,int const*,int *) ;

int glue_cbc_encrypt_req_128bit(const common_glue_func_t fn,
    struct skcipher_request *req)
{
 void *ctx = crypto_skcipher_ctx(crypto_skcipher_reqtfm(req));
 const unsigned int bsize = 128 / 8;
 struct skcipher_walk walk;
 unsigned int nbytes;
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while ((nbytes = walk.nbytes)) {
  const u128 *src = (u128 *)walk.src.virt.addr;
  u128 *dst = (u128 *)walk.dst.virt.addr;
  u128 *iv = (u128 *)walk.iv;

  do {
   u128_xor(dst, src, iv);
   fn(ctx, (u8 *)dst, (u8 *)dst);
   iv = dst;
   src++;
   dst++;
   nbytes -= bsize;
  } while (nbytes >= bsize);

  *(u128 *)walk.iv = *iv;
  err = skcipher_walk_done(&walk, nbytes);
 }
 return err;
}
