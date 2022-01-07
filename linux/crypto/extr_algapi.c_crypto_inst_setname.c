
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_driver_name; int cra_name; } ;
struct crypto_instance {TYPE_1__ alg; } ;
struct crypto_alg {char* cra_name; char* cra_driver_name; } ;


 scalar_t__ CRYPTO_MAX_ALG_NAME ;
 int ENAMETOOLONG ;
 scalar_t__ snprintf (int ,scalar_t__,char*,char const*,char*) ;

int crypto_inst_setname(struct crypto_instance *inst, const char *name,
   struct crypto_alg *alg)
{
 if (snprintf(inst->alg.cra_name, CRYPTO_MAX_ALG_NAME, "%s(%s)", name,
       alg->cra_name) >= CRYPTO_MAX_ALG_NAME)
  return -ENAMETOOLONG;

 if (snprintf(inst->alg.cra_driver_name, CRYPTO_MAX_ALG_NAME, "%s(%s)",
       name, alg->cra_driver_name) >= CRYPTO_MAX_ALG_NAME)
  return -ENAMETOOLONG;

 return 0;
}
