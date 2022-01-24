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
 int /*<<< orphan*/  cleanup_rng ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rng_mutex ; 

__attribute__((used)) static void FUNC3(struct hwrng *rng)
{
	/*
	 * Hold rng_mutex here so we serialize in case they set_current_rng
	 * on rng again immediately.
	 */
	FUNC1(&rng_mutex);
	if (rng)
		FUNC0(&rng->ref, cleanup_rng);
	FUNC2(&rng_mutex);
}