
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_rng_private {int entropy_shm_pool; } ;
struct hwrng {int dummy; } ;


 int tee_shm_free (int ) ;
 struct optee_rng_private* to_optee_rng_private (struct hwrng*) ;

__attribute__((used)) static void optee_rng_cleanup(struct hwrng *rng)
{
 struct optee_rng_private *pvt_data = to_optee_rng_private(rng);

 tee_shm_free(pvt_data->entropy_shm_pool);
}
