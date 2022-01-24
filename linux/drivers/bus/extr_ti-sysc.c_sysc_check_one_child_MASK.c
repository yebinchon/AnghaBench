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
struct sysc {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sysc*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysc*,struct device_node*,int) ; 

__attribute__((used)) static void FUNC4(struct sysc *ddata,
				 struct device_node *np)
{
	const char *name;

	name = FUNC1(np, "ti,hwmods", NULL);
	if (name)
		FUNC0(ddata->dev, "really a child ti,hwmods property?");

	FUNC2(ddata, np);
	FUNC3(ddata, np, true);
}