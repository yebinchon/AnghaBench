
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm {int dummy; } ;
struct optee_rng_private {struct tee_shm* entropy_shm_pool; int dev; int ctx; } ;
struct hwrng {int dummy; } ;


 scalar_t__ IS_ERR (struct tee_shm*) ;
 int MAX_ENTROPY_REQ_SZ ;
 int PTR_ERR (struct tee_shm*) ;
 int TEE_SHM_DMA_BUF ;
 int TEE_SHM_MAPPED ;
 int dev_err (int ,char*) ;
 struct tee_shm* tee_shm_alloc (int ,int ,int) ;
 struct optee_rng_private* to_optee_rng_private (struct hwrng*) ;

__attribute__((used)) static int optee_rng_init(struct hwrng *rng)
{
 struct optee_rng_private *pvt_data = to_optee_rng_private(rng);
 struct tee_shm *entropy_shm_pool = ((void*)0);

 entropy_shm_pool = tee_shm_alloc(pvt_data->ctx, MAX_ENTROPY_REQ_SZ,
      TEE_SHM_MAPPED | TEE_SHM_DMA_BUF);
 if (IS_ERR(entropy_shm_pool)) {
  dev_err(pvt_data->dev, "tee_shm_alloc failed\n");
  return PTR_ERR(entropy_shm_pool);
 }

 pvt_data->entropy_shm_pool = entropy_shm_pool;

 return 0;
}
