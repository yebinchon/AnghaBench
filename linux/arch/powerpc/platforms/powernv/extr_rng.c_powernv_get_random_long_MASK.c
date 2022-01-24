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
struct powernv_rng {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 struct powernv_rng* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powernv_rng ; 
 int /*<<< orphan*/  FUNC2 (struct powernv_rng*) ; 
 unsigned long FUNC3 (struct powernv_rng*,int /*<<< orphan*/ ) ; 

int FUNC4(unsigned long *v)
{
	struct powernv_rng *rng;

	rng = FUNC0(powernv_rng);

	*v = FUNC3(rng, FUNC1(rng->regs));

	FUNC2(rng);

	return 1;
}