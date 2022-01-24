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
typedef  int /*<<< orphan*/  u8 ;
struct work_struct {int dummy; } ;
typedef  int /*<<< orphan*/  seed ;
typedef  int /*<<< orphan*/  prng_wa ;

/* Variables and functions */
 int ARCH_PRNG_SEED_SIZE ; 
 unsigned int ARCH_REFILL_TICKS ; 
 unsigned int ARCH_RNG_BUF_SIZE ; 
 int /*<<< orphan*/  CPACF_PRNO_SHA512_DRNG_GEN ; 
 int /*<<< orphan*/  CPACF_PRNO_SHA512_DRNG_SEED ; 
 int /*<<< orphan*/ * arch_rng_buf ; 
 unsigned int arch_rng_buf_idx ; 
 int /*<<< orphan*/  arch_rng_lock ; 
 int /*<<< orphan*/  arch_rng_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_long_wq ; 

__attribute__((used)) static void FUNC6(struct work_struct *unused)
{
	unsigned int delay = ARCH_REFILL_TICKS;

	FUNC4(&arch_rng_lock);
	if (arch_rng_buf_idx > ARCH_RNG_BUF_SIZE) {
		/* buffer is exhausted and needs refill */
		u8 seed[ARCH_PRNG_SEED_SIZE];
		u8 prng_wa[240];
		/* fetch ARCH_PRNG_SEED_SIZE bytes of entropy */
		FUNC1(NULL, 0, seed, sizeof(seed));
		/* blow this entropy up to ARCH_RNG_BUF_SIZE with PRNG */
		FUNC2(prng_wa, 0, sizeof(prng_wa));
		FUNC0(CPACF_PRNO_SHA512_DRNG_SEED,
			   &prng_wa, NULL, 0, seed, sizeof(seed));
		FUNC0(CPACF_PRNO_SHA512_DRNG_GEN,
			   &prng_wa, arch_rng_buf, ARCH_RNG_BUF_SIZE, NULL, 0);
		arch_rng_buf_idx = ARCH_RNG_BUF_SIZE;
	}
	delay += (ARCH_REFILL_TICKS * arch_rng_buf_idx) / ARCH_RNG_BUF_SIZE;
	FUNC5(&arch_rng_lock);

	/* kick next check */
	FUNC3(system_long_wq, &arch_rng_work, delay);
}