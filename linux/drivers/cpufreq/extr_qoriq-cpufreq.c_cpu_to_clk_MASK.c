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
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct clk* FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static struct clk *FUNC4(int cpu)
{
	struct device_node *np;
	struct clk *clk;

	if (!FUNC0(cpu))
		return NULL;

	np = FUNC2(cpu, NULL);
	if (!np)
		return NULL;

	clk = FUNC1(np, 0);
	FUNC3(np);
	return clk;
}