
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct crypto_tfm {int dummy; } ;
struct TYPE_4__ {int sg; } ;
struct ablkcipher_walk {TYPE_2__ out; TYPE_2__ in; scalar_t__ iv; int * iv_buffer; int total; int nbytes; } ;
struct TYPE_3__ {struct crypto_tfm* tfm; } ;
struct ablkcipher_request {scalar_t__ info; TYPE_1__ base; } ;


 int EDEADLK ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int ablkcipher_copy_iv (struct ablkcipher_walk*,struct crypto_tfm*,unsigned int) ;
 int ablkcipher_walk_next (struct ablkcipher_request*,struct ablkcipher_walk*) ;
 unsigned int crypto_tfm_alg_alignmask (struct crypto_tfm*) ;
 int in_irq () ;
 int scatterwalk_start (TYPE_2__*,int ) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static int ablkcipher_walk_first(struct ablkcipher_request *req,
     struct ablkcipher_walk *walk)
{
 struct crypto_tfm *tfm = req->base.tfm;
 unsigned int alignmask;

 alignmask = crypto_tfm_alg_alignmask(tfm);
 if (WARN_ON_ONCE(in_irq()))
  return -EDEADLK;

 walk->iv = req->info;
 walk->nbytes = walk->total;
 if (unlikely(!walk->total))
  return 0;

 walk->iv_buffer = ((void*)0);
 if (unlikely(((unsigned long)walk->iv & alignmask))) {
  int err = ablkcipher_copy_iv(walk, tfm, alignmask);

  if (err)
   return err;
 }

 scatterwalk_start(&walk->in, walk->in.sg);
 scatterwalk_start(&walk->out, walk->out.sg);

 return ablkcipher_walk_next(req, walk);
}
