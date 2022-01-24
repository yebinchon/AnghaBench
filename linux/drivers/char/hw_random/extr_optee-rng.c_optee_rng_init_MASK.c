#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tee_shm {int dummy; } ;
struct optee_rng_private {struct tee_shm* entropy_shm_pool; int /*<<< orphan*/  dev; int /*<<< orphan*/  ctx; } ;
struct hwrng {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tee_shm*) ; 
 int /*<<< orphan*/  MAX_ENTROPY_REQ_SZ ; 
 int FUNC1 (struct tee_shm*) ; 
 int TEE_SHM_DMA_BUF ; 
 int TEE_SHM_MAPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct tee_shm* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct optee_rng_private* FUNC4 (struct hwrng*) ; 

__attribute__((used)) static int FUNC5(struct hwrng *rng)
{
	struct optee_rng_private *pvt_data = FUNC4(rng);
	struct tee_shm *entropy_shm_pool = NULL;

	entropy_shm_pool = FUNC3(pvt_data->ctx, MAX_ENTROPY_REQ_SZ,
					 TEE_SHM_MAPPED | TEE_SHM_DMA_BUF);
	if (FUNC0(entropy_shm_pool)) {
		FUNC2(pvt_data->dev, "tee_shm_alloc failed\n");
		return FUNC1(entropy_shm_pool);
	}

	pvt_data->entropy_shm_pool = entropy_shm_pool;

	return 0;
}