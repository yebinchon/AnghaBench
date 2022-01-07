
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_walk {int flags; } ;
struct TYPE_2__ {int flags; } ;
struct skcipher_request {TYPE_1__ base; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int SKCIPHER_WALK_PHYS ;
 int SKCIPHER_WALK_SLEEP ;
 int might_sleep_if (int) ;
 int skcipher_walk_skcipher (struct skcipher_walk*,struct skcipher_request*) ;

int skcipher_walk_virt(struct skcipher_walk *walk,
         struct skcipher_request *req, bool atomic)
{
 int err;

 might_sleep_if(req->base.flags & CRYPTO_TFM_REQ_MAY_SLEEP);

 walk->flags &= ~SKCIPHER_WALK_PHYS;

 err = skcipher_walk_skcipher(walk, req);

 walk->flags &= atomic ? ~SKCIPHER_WALK_SLEEP : ~0;

 return err;
}
