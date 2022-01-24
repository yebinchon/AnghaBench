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
typedef  int u32 ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  RNG_GEN_HW ; 
 int /*<<< orphan*/  RNG_GEN_PRNG_HW_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idle_work ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  rng_clk ; 
 scalar_t__ rng_idle ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(void *buf, unsigned int count)
{
	u32 r;
	u32 ptr;

	FUNC0(&idle_work);
	if (rng_idle) {
		r = FUNC2(rng_clk);
		if (r)
			return r;

		r = FUNC4(0, 0, RNG_GEN_PRNG_HW_INIT);
		if (r != 0) {
			FUNC1(rng_clk);
			FUNC5("HW init failed: %d\n", r);
			return -EIO;
		}
		rng_idle = 0;
	}

	ptr = FUNC7(buf);
	r = FUNC4(ptr, count, RNG_GEN_HW);
	FUNC6(&idle_work, FUNC3(500));
	if (r != 0)
		return -EINVAL;
	return 0;
}