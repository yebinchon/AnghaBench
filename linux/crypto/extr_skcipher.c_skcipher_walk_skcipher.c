
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_walk {int alignmask; int ivsize; int stride; int blocksize; int flags; int out; int in; int total; int oiv; int iv; scalar_t__ nbytes; } ;
struct TYPE_2__ {int flags; } ;
struct skcipher_request {TYPE_1__ base; int dst; int src; int iv; int cryptlen; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int SKCIPHER_WALK_SLEEP ;
 int crypto_skcipher_alignmask (struct crypto_skcipher*) ;
 int crypto_skcipher_blocksize (struct crypto_skcipher*) ;
 int crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int crypto_skcipher_walksize (struct crypto_skcipher*) ;
 int scatterwalk_start (int *,int ) ;
 int skcipher_walk_first (struct skcipher_walk*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int skcipher_walk_skcipher(struct skcipher_walk *walk,
      struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);

 walk->total = req->cryptlen;
 walk->nbytes = 0;
 walk->iv = req->iv;
 walk->oiv = req->iv;

 if (unlikely(!walk->total))
  return 0;

 scatterwalk_start(&walk->in, req->src);
 scatterwalk_start(&walk->out, req->dst);

 walk->flags &= ~SKCIPHER_WALK_SLEEP;
 walk->flags |= req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP ?
         SKCIPHER_WALK_SLEEP : 0;

 walk->blocksize = crypto_skcipher_blocksize(tfm);
 walk->stride = crypto_skcipher_walksize(tfm);
 walk->ivsize = crypto_skcipher_ivsize(tfm);
 walk->alignmask = crypto_skcipher_alignmask(tfm);

 return skcipher_walk_first(walk);
}
