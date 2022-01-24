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
struct entropy_store {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct entropy_store*) ; 
 int /*<<< orphan*/  FUNC1 (struct entropy_store*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t) ; 
 scalar_t__ crng_init ; 
 struct entropy_store input_pool ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct entropy_store*,char const*,size_t) ; 
 int /*<<< orphan*/  random_write_wait ; 
 scalar_t__ random_write_wakeup_bits ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7(const char *buffer, size_t count,
				size_t entropy)
{
	struct entropy_store *poolp = &input_pool;

	if (FUNC5(crng_init == 0)) {
		FUNC2(buffer, count);
		return;
	}

	/* Suspend writing if we're above the trickle threshold.
	 * We'll be woken up again once below random_write_wakeup_thresh,
	 * or when the calling thread is about to terminate.
	 */
	FUNC6(random_write_wait,
			FUNC3() ||
			FUNC0(&input_pool) <= random_write_wakeup_bits);
	FUNC4(poolp, buffer, count);
	FUNC1(poolp, entropy);
}