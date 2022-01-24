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

/* Variables and functions */
 struct device_node* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC1 (struct device_node*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct reset_control *FUNC2(int cpu)
{
	struct device_node *np = FUNC0(cpu, 0);

	return FUNC1(np, NULL);
}