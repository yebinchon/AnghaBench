
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_name; int cra_driver_name; } ;
struct shash_alg {TYPE_1__ base; } ;


 int crypto_unregister_shash (struct shash_alg*) ;
 int pr_err (char*,int ,int ,int) ;

int crypto_unregister_shashes(struct shash_alg *algs, int count)
{
 int i, ret;

 for (i = count - 1; i >= 0; --i) {
  ret = crypto_unregister_shash(&algs[i]);
  if (ret)
   pr_err("Failed to unregister %s %s: %d\n",
          algs[i].base.cra_driver_name,
          algs[i].base.cra_name, ret);
 }

 return 0;
}
