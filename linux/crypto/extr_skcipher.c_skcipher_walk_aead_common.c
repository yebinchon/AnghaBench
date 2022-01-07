
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_walk {int flags; int alignmask; int ivsize; int stride; int blocksize; int total; int out; int in; int oiv; int iv; scalar_t__ nbytes; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct aead_request {TYPE_1__ base; int assoclen; int dst; int src; int iv; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int SKCIPHER_WALK_PHYS ;
 int SKCIPHER_WALK_SLEEP ;
 int crypto_aead_alignmask (struct crypto_aead*) ;
 int crypto_aead_blocksize (struct crypto_aead*) ;
 int crypto_aead_chunksize (struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int scatterwalk_copychunks (int *,int *,int ,int) ;
 int scatterwalk_done (int *,int ,int ) ;
 int scatterwalk_start (int *,int ) ;
 int skcipher_walk_first (struct skcipher_walk*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int skcipher_walk_aead_common(struct skcipher_walk *walk,
         struct aead_request *req, bool atomic)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 int err;

 walk->nbytes = 0;
 walk->iv = req->iv;
 walk->oiv = req->iv;

 if (unlikely(!walk->total))
  return 0;

 walk->flags &= ~SKCIPHER_WALK_PHYS;

 scatterwalk_start(&walk->in, req->src);
 scatterwalk_start(&walk->out, req->dst);

 scatterwalk_copychunks(((void*)0), &walk->in, req->assoclen, 2);
 scatterwalk_copychunks(((void*)0), &walk->out, req->assoclen, 2);

 scatterwalk_done(&walk->in, 0, walk->total);
 scatterwalk_done(&walk->out, 0, walk->total);

 if (req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP)
  walk->flags |= SKCIPHER_WALK_SLEEP;
 else
  walk->flags &= ~SKCIPHER_WALK_SLEEP;

 walk->blocksize = crypto_aead_blocksize(tfm);
 walk->stride = crypto_aead_chunksize(tfm);
 walk->ivsize = crypto_aead_ivsize(tfm);
 walk->alignmask = crypto_aead_alignmask(tfm);

 err = skcipher_walk_first(walk);

 if (atomic)
  walk->flags &= ~SKCIPHER_WALK_SLEEP;

 return err;
}
