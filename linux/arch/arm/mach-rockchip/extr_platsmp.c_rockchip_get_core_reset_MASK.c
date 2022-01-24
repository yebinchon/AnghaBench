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
struct reset_control {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 struct device* FUNC0 (int) ; 
 struct device_node* FUNC1 (int,int /*<<< orphan*/ *) ; 
 struct reset_control* FUNC2 (struct device_node*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct reset_control *FUNC3(int cpu)
{
	struct device *dev = FUNC0(cpu);
	struct device_node *np;

	/* The cpu device is only available after the initial core bringup */
	if (dev)
		np = dev->of_node;
	else
		np = FUNC1(cpu, NULL);

	return FUNC2(np, NULL);
}