
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {scalar_t__ nbytes; TYPE_4__ src; TYPE_2__ dst; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct arc4_ctx {int dummy; } ;


 int arc4_crypt (struct arc4_ctx*,int ,int ,scalar_t__) ;
 struct arc4_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int skcipher_walk_done (struct skcipher_walk*,int ) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int crypto_arc4_crypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct arc4_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct skcipher_walk walk;
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while (walk.nbytes > 0) {
  arc4_crypt(ctx, walk.dst.virt.addr, walk.src.virt.addr,
      walk.nbytes);
  err = skcipher_walk_done(&walk, 0);
 }

 return err;
}
