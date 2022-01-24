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
struct hwrng {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERESTARTSYS ; 
 struct hwrng* FUNC0 (int /*<<< orphan*/ ) ; 
 struct hwrng* current_rng ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rng_mutex ; 

__attribute__((used)) static struct hwrng *FUNC4(void)
{
	struct hwrng *rng;

	if (FUNC2(&rng_mutex))
		return FUNC0(-ERESTARTSYS);

	rng = current_rng;
	if (rng)
		FUNC1(&rng->ref);

	FUNC3(&rng_mutex);
	return rng;
}