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
struct powernv_rng {int /*<<< orphan*/  regs_real; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powernv_rng ; 
 struct powernv_rng* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct powernv_rng*,int /*<<< orphan*/ ) ; 

int FUNC3(unsigned long *v)
{
	struct powernv_rng *rng;

	rng = FUNC1(powernv_rng);

	*v = FUNC2(rng, FUNC0(rng->regs_real));

	return 1;
}