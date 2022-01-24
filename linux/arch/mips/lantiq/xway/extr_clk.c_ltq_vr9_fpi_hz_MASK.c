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

/* Variables and functions */
 int /*<<< orphan*/  CGU_SYS_XRX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 () ; 

unsigned long FUNC2(void)
{
	unsigned int ocp_sel, cpu_clk;
	unsigned long clk;

	cpu_clk = FUNC1();
	ocp_sel = FUNC0(CGU_SYS_XRX) & 0x3;

	switch (ocp_sel) {
	case 0:
		/* OCP ratio 1 */
		clk = cpu_clk;
		break;
	case 2:
		/* OCP ratio 2 */
		clk = cpu_clk / 2;
		break;
	case 3:
		/* OCP ratio 2.5 */
		clk = (cpu_clk * 2) / 5;
		break;
	case 4:
		/* OCP ratio 3 */
		clk = cpu_clk / 3;
		break;
	default:
		clk = 0;
		break;
	}

	return clk;
}