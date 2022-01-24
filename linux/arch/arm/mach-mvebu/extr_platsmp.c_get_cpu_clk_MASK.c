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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 scalar_t__ FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct clk* FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct clk *FUNC5(int cpu)
{
	struct clk *cpu_clk;
	struct device_node *np = FUNC4(cpu, NULL);

	if (FUNC1(!np, "missing cpu node\n"))
		return NULL;
	cpu_clk = FUNC3(np, 0);
	if (FUNC2(FUNC0(cpu_clk)))
		return NULL;
	return cpu_clk;
}