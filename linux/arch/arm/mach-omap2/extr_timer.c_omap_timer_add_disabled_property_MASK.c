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
struct property {char* name; char* value; int /*<<< orphan*/  length; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct property* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*,struct property*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np)
{
	struct property *prop;

	prop = FUNC0(sizeof(*prop), GFP_KERNEL);
	if (!prop)
		return -ENOMEM;

	prop->name = "status";
	prop->value = "disabled";
	prop->length = FUNC2(prop->value);

	return FUNC1(np, prop);
}