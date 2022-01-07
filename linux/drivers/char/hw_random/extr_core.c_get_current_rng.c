
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int ref; } ;


 int ERESTARTSYS ;
 struct hwrng* ERR_PTR (int ) ;
 struct hwrng* current_rng ;
 int kref_get (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rng_mutex ;

__attribute__((used)) static struct hwrng *get_current_rng(void)
{
 struct hwrng *rng;

 if (mutex_lock_interruptible(&rng_mutex))
  return ERR_PTR(-ERESTARTSYS);

 rng = current_rng;
 if (rng)
  kref_get(&rng->ref);

 mutex_unlock(&rng_mutex);
 return rng;
}
