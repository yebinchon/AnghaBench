
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; unsigned int total; TYPE_4__ src; TYPE_2__ dst; int stride; } ;
struct skcipher_request {int iv; } ;
struct salsa20_ctx {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 struct salsa20_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 unsigned int round_down (unsigned int,int ) ;
 int salsa20_docrypt (int *,int ,int ,unsigned int) ;
 int salsa20_init (int *,struct salsa20_ctx const*,int ) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int salsa20_crypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 const struct salsa20_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct skcipher_walk walk;
 u32 state[16];
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 salsa20_init(state, ctx, req->iv);

 while (walk.nbytes > 0) {
  unsigned int nbytes = walk.nbytes;

  if (nbytes < walk.total)
   nbytes = round_down(nbytes, walk.stride);

  salsa20_docrypt(state, walk.dst.virt.addr, walk.src.virt.addr,
    nbytes);
  err = skcipher_walk_done(&walk, walk.nbytes - nbytes);
 }

 return err;
}
