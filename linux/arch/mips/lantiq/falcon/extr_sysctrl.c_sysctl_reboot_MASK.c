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
struct clk {unsigned int bits; int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYSCTL_ACT ; 
 int /*<<< orphan*/  SYSCTL_ACTS ; 
 int /*<<< orphan*/  SYSCTL_CLKEN ; 
 int /*<<< orphan*/  SYSCTL_RBT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct clk *clk)
{
	unsigned int act;
	unsigned int bits;

	act = FUNC0(clk->module, SYSCTL_ACT);
	bits = ~act & clk->bits;
	if (bits != 0) {
		FUNC1(clk->module, bits, SYSCTL_CLKEN);
		FUNC1(clk->module, bits, SYSCTL_ACT);
		FUNC2(clk, bits, SYSCTL_ACTS);
	}
	FUNC1(clk->module, act & clk->bits, SYSCTL_RBT);
	FUNC2(clk, clk->bits, SYSCTL_ACTS);
}