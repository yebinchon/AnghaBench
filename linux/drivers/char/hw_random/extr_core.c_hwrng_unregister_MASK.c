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
struct hwrng {int /*<<< orphan*/  cleanup_done; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ cur_rng_set_by_user ; 
 struct hwrng* current_rng ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ hwrng_fill ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rng_list ; 
 int /*<<< orphan*/  rng_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct hwrng *rng)
{
	int err;

	FUNC5(&rng_mutex);

	FUNC3(&rng->list);
	if (current_rng == rng) {
		err = FUNC1();
		if (err) {
			FUNC0();
			cur_rng_set_by_user = 0;
		}
	}

	if (FUNC4(&rng_list)) {
		FUNC6(&rng_mutex);
		if (hwrng_fill)
			FUNC2(hwrng_fill);
	} else
		FUNC6(&rng_mutex);

	FUNC7(&rng->cleanup_done);
}