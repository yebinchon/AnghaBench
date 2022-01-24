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
 struct device_node* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 unsigned int* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static int FUNC3(char *propname)
{
	struct device_node *np;
	const unsigned int *prop;
	int val;

	val = 0;
	np = FUNC0(NULL, NULL, "fsl,mpc5121-immr");
	if (np) {
		prop = FUNC1(np, propname, NULL);
		if (prop)
			val = *prop;
	    FUNC2(np);
	}
	return val;
}