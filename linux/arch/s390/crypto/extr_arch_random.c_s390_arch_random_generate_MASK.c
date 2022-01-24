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

/* Variables and functions */
 scalar_t__ ARCH_RNG_BUF_SIZE ; 
 scalar_t__ arch_rng_buf ; 
 scalar_t__ arch_rng_buf_idx ; 
 int /*<<< orphan*/  arch_rng_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  s390_arch_random_counter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(u8 *buf, unsigned int nbytes)
{
	/* lock rng buffer */
	if (!FUNC2(&arch_rng_lock))
		return false;

	/* try to resolve the requested amount of bytes from the buffer */
	arch_rng_buf_idx -= nbytes;
	if (arch_rng_buf_idx < ARCH_RNG_BUF_SIZE) {
		FUNC1(buf, arch_rng_buf + arch_rng_buf_idx, nbytes);
		FUNC0(nbytes, &s390_arch_random_counter);
		FUNC3(&arch_rng_lock);
		return true;
	}

	/* not enough bytes in rng buffer, refill is done asynchronously */
	FUNC3(&arch_rng_lock);

	return false;
}