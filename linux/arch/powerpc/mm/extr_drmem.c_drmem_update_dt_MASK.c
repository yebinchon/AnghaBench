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
struct property {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device_node*,struct property*) ; 
 int FUNC1 (struct device_node*,struct property*) ; 
 struct device_node* FUNC2 (char*) ; 
 struct property* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

int FUNC5(void)
{
	struct device_node *memory;
	struct property *prop;
	int rc = -1;

	memory = FUNC2("/ibm,dynamic-reconfiguration-memory");
	if (!memory)
		return -1;

	prop = FUNC3(memory, "ibm,dynamic-memory", NULL);
	if (prop) {
		rc = FUNC0(memory, prop);
	} else {
		prop = FUNC3(memory, "ibm,dynamic-memory-v2", NULL);
		if (prop)
			rc = FUNC1(memory, prop);
	}

	FUNC4(memory);
	return rc;
}