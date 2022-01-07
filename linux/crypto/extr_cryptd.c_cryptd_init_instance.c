
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_alignmask; int cra_blocksize; scalar_t__ cra_priority; int cra_name; int cra_driver_name; } ;
struct crypto_instance {TYPE_1__ alg; } ;
struct crypto_alg {char* cra_driver_name; int cra_alignmask; int cra_blocksize; scalar_t__ cra_priority; int cra_name; } ;


 scalar_t__ CRYPTO_MAX_ALG_NAME ;
 int ENAMETOOLONG ;
 int memcpy (int ,int ,scalar_t__) ;
 scalar_t__ snprintf (int ,scalar_t__,char*,char*) ;

__attribute__((used)) static int cryptd_init_instance(struct crypto_instance *inst,
    struct crypto_alg *alg)
{
 if (snprintf(inst->alg.cra_driver_name, CRYPTO_MAX_ALG_NAME,
       "cryptd(%s)",
       alg->cra_driver_name) >= CRYPTO_MAX_ALG_NAME)
  return -ENAMETOOLONG;

 memcpy(inst->alg.cra_name, alg->cra_name, CRYPTO_MAX_ALG_NAME);

 inst->alg.cra_priority = alg->cra_priority + 50;
 inst->alg.cra_blocksize = alg->cra_blocksize;
 inst->alg.cra_alignmask = alg->cra_alignmask;

 return 0;
}
