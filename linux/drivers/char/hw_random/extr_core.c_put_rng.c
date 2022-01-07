
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int ref; } ;


 int cleanup_rng ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rng_mutex ;

__attribute__((used)) static void put_rng(struct hwrng *rng)
{




 mutex_lock(&rng_mutex);
 if (rng)
  kref_put(&rng->ref, cleanup_rng);
 mutex_unlock(&rng_mutex);
}
