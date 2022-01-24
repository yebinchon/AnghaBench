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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HIP01_PERI9 ; 
 unsigned int PERI9_CPU1_RESET ; 
 scalar_t__ ctrl_base ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

void FUNC7(int cpu, bool enable)
{
	unsigned int temp;
	struct device_node *np;

	if (!ctrl_base) {
		np = FUNC1(NULL, NULL, "hisilicon,hip01-sysctrl");
		FUNC0(!np);
		ctrl_base = FUNC2(np, 0);
		FUNC3(np);
		FUNC0(!ctrl_base);
	}

	if (enable) {
		/* reset on CPU1  */
		temp = FUNC4(ctrl_base + HIP01_PERI9);
		temp |= PERI9_CPU1_RESET;
		FUNC6(temp, ctrl_base + HIP01_PERI9);

		FUNC5(50);

		/* unreset on CPU1 */
		temp = FUNC4(ctrl_base + HIP01_PERI9);
		temp &= ~PERI9_CPU1_RESET;
		FUNC6(temp, ctrl_base + HIP01_PERI9);
	}
}