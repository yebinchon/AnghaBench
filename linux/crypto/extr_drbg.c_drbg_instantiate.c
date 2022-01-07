
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbg_string {int dummy; } ;
struct drbg_state {int pr; int seeded; int drbg_mutex; int * jent; int reseed_threshold; int * core; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int drbg_alloc_state (struct drbg_state*) ;
 int * drbg_cores ;
 int drbg_max_requests (struct drbg_state*) ;
 int drbg_prepare_hrng (struct drbg_state*) ;
 int drbg_seed (struct drbg_state*,struct drbg_string*,int) ;
 int drbg_uninstantiate (struct drbg_state*) ;
 scalar_t__ fips_enabled ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_devel (char*,int,char*) ;
 int pr_info (char*) ;

__attribute__((used)) static int drbg_instantiate(struct drbg_state *drbg, struct drbg_string *pers,
       int coreref, bool pr)
{
 int ret;
 bool reseed = 1;

 pr_devel("DRBG: Initializing DRBG core %d with prediction resistance "
   "%s\n", coreref, pr ? "enabled" : "disabled");
 mutex_lock(&drbg->drbg_mutex);
 if (!drbg->core) {
  drbg->core = &drbg_cores[coreref];
  drbg->pr = pr;
  drbg->seeded = 0;
  drbg->reseed_threshold = drbg_max_requests(drbg);

  ret = drbg_alloc_state(drbg);
  if (ret)
   goto unlock;

  ret = drbg_prepare_hrng(drbg);
  if (ret)
   goto free_everything;

  if (IS_ERR(drbg->jent)) {
   ret = PTR_ERR(drbg->jent);
   drbg->jent = ((void*)0);
   if (fips_enabled || ret != -ENOENT)
    goto free_everything;
   pr_info("DRBG: Continuing without Jitter RNG\n");
  }

  reseed = 0;
 }

 ret = drbg_seed(drbg, pers, reseed);

 if (ret && !reseed)
  goto free_everything;

 mutex_unlock(&drbg->drbg_mutex);
 return ret;

unlock:
 mutex_unlock(&drbg->drbg_mutex);
 return ret;

free_everything:
 mutex_unlock(&drbg->drbg_mutex);
 drbg_uninstantiate(drbg);
 return ret;
}
