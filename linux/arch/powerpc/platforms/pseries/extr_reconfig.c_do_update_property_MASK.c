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
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 struct property* FUNC0 (char*,int,unsigned char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device_node*,struct property*) ; 
 char* FUNC2 (char*,char*,char**,int*,unsigned char**) ; 
 char* FUNC3 (char*,size_t,struct device_node**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(char *buf, size_t bufsize)
{
	struct device_node *np;
	unsigned char *value;
	char *name, *end, *next_prop;
	int length;
	struct property *newprop;
	buf = FUNC3(buf, bufsize, &np);
	end = buf + bufsize;

	if (!np)
		return -ENODEV;

	next_prop = FUNC2(buf, end, &name, &length, &value);
	if (!next_prop)
		return -EINVAL;

	if (!FUNC6(name))
		return -ENODEV;

	newprop = FUNC0(name, length, value, NULL);
	if (!newprop)
		return -ENOMEM;

	if (!FUNC5(name, "slb-size") || !FUNC5(name, "ibm,slb-size"))
		FUNC4(*(int *)value);

	return FUNC1(np, newprop);
}