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
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  sys_ck_rate ; 

void FUNC5(void)
{
	struct clk *c;

	c = FUNC2(NULL, "sys_ck");
	if (FUNC0(c)) {
		FUNC1(1, "could not locate sys_ck\n");
	} else {
		sys_ck_rate = FUNC3(c);
		FUNC4(c);
	}
}