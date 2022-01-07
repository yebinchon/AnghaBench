
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct TYPE_6__ {unsigned long offset; void* page; } ;
struct TYPE_5__ {unsigned long offset; void* page; } ;
struct ablkcipher_walk {unsigned int total; unsigned int nbytes; TYPE_3__ dst; TYPE_2__ src; int out; int in; int blocksize; int flags; } ;
struct TYPE_4__ {int flags; struct crypto_tfm* tfm; } ;
struct ablkcipher_request {TYPE_1__ base; } ;


 int ABLKCIPHER_WALK_SLOW ;
 int CRYPTO_TFM_RES_BAD_BLOCK_LEN ;
 int EINVAL ;
 int PAGE_SIZE ;
 int ablkcipher_next_fast (struct ablkcipher_request*,struct ablkcipher_walk*) ;
 int ablkcipher_next_slow (struct ablkcipher_request*,struct ablkcipher_walk*,unsigned int,unsigned int,void**,void**) ;
 int ablkcipher_walk_done (struct ablkcipher_request*,struct ablkcipher_walk*,int ) ;
 unsigned int crypto_tfm_alg_alignmask (struct crypto_tfm*) ;
 unsigned int crypto_tfm_alg_blocksize (struct crypto_tfm*) ;
 unsigned int min (int ,unsigned int) ;
 int scatterwalk_aligned (int *,unsigned int) ;
 unsigned int scatterwalk_clamp (int *,unsigned int) ;
 scalar_t__ unlikely (int) ;
 void* virt_to_page (void*) ;

__attribute__((used)) static int ablkcipher_walk_next(struct ablkcipher_request *req,
    struct ablkcipher_walk *walk)
{
 struct crypto_tfm *tfm = req->base.tfm;
 unsigned int alignmask, bsize, n;
 void *src, *dst;
 int err;

 alignmask = crypto_tfm_alg_alignmask(tfm);
 n = walk->total;
 if (unlikely(n < crypto_tfm_alg_blocksize(tfm))) {
  req->base.flags |= CRYPTO_TFM_RES_BAD_BLOCK_LEN;
  return ablkcipher_walk_done(req, walk, -EINVAL);
 }

 walk->flags &= ~ABLKCIPHER_WALK_SLOW;
 src = dst = ((void*)0);

 bsize = min(walk->blocksize, n);
 n = scatterwalk_clamp(&walk->in, n);
 n = scatterwalk_clamp(&walk->out, n);

 if (n < bsize ||
     !scatterwalk_aligned(&walk->in, alignmask) ||
     !scatterwalk_aligned(&walk->out, alignmask)) {
  err = ablkcipher_next_slow(req, walk, bsize, alignmask,
        &src, &dst);
  goto set_phys_lowmem;
 }

 walk->nbytes = n;

 return ablkcipher_next_fast(req, walk);

set_phys_lowmem:
 if (err >= 0) {
  walk->src.page = virt_to_page(src);
  walk->dst.page = virt_to_page(dst);
  walk->src.offset = ((unsigned long)src & (PAGE_SIZE - 1));
  walk->dst.offset = ((unsigned long)dst & (PAGE_SIZE - 1));
 }

 return err;
}
