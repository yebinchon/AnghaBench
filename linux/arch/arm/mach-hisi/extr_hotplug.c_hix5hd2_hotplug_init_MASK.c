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
 int /*<<< orphan*/  ctrl_base ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static bool FUNC3(void)
{
	struct device_node *np;

	np = FUNC0(NULL, NULL, "hisilicon,cpuctrl");
	if (!np)
		return false;

	ctrl_base = FUNC1(np, 0);
	FUNC2(np);
	if (!ctrl_base)
		return false;

	return true;
}