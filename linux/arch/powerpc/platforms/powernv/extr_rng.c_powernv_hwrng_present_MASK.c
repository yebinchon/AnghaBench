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
struct powernv_rng {int dummy; } ;

/* Variables and functions */
 struct powernv_rng* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powernv_rng ; 
 int /*<<< orphan*/  FUNC1 (struct powernv_rng*) ; 

int FUNC2(void)
{
	struct powernv_rng *rng;

	rng = FUNC0(powernv_rng);
	FUNC1(rng);
	return rng != NULL;
}