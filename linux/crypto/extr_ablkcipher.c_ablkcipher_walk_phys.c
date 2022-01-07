
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ablkcipher_walk {int blocksize; } ;
struct TYPE_2__ {int tfm; } ;
struct ablkcipher_request {TYPE_1__ base; } ;


 int ablkcipher_walk_first (struct ablkcipher_request*,struct ablkcipher_walk*) ;
 int crypto_tfm_alg_blocksize (int ) ;

int ablkcipher_walk_phys(struct ablkcipher_request *req,
    struct ablkcipher_walk *walk)
{
 walk->blocksize = crypto_tfm_alg_blocksize(req->base.tfm);
 return ablkcipher_walk_first(req, walk);
}
