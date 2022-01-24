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
struct hwrng {int (* init ) (struct hwrng*) ;scalar_t__ quality; int /*<<< orphan*/  cleanup_done; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hwrng*) ; 
 int current_quality ; 
 int default_quality ; 
 scalar_t__ hwrng_fill ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct hwrng*) ; 

__attribute__((used)) static int FUNC7(struct hwrng *rng)
{
	if (FUNC1(&rng->ref))
		goto skip_init;

	if (rng->init) {
		int ret;

		ret =  rng->init(rng);
		if (ret)
			return ret;
	}

	FUNC2(&rng->ref);
	FUNC4(&rng->cleanup_done);

skip_init:
	FUNC0(rng);

	current_quality = rng->quality ? : default_quality;
	if (current_quality > 1024)
		current_quality = 1024;

	if (current_quality == 0 && hwrng_fill)
		FUNC3(hwrng_fill);
	if (current_quality > 0 && !hwrng_fill)
		FUNC5();

	return 0;
}