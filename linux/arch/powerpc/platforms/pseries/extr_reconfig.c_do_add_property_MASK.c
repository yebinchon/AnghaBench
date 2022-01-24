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
 int /*<<< orphan*/  FUNC1 (struct device_node*,struct property*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,char**,int*,unsigned char**) ; 
 char* FUNC3 (char*,size_t,struct device_node**) ; 

__attribute__((used)) static int FUNC4(char *buf, size_t bufsize)
{
	struct property *prop = NULL;
	struct device_node *np;
	unsigned char *value;
	char *name, *end;
	int length;
	end = buf + bufsize;
	buf = FUNC3(buf, bufsize, &np);

	if (!np)
		return -ENODEV;

	if (FUNC2(buf, end, &name, &length, &value) == NULL)
		return -EINVAL;

	prop = FUNC0(name, length, value, NULL);
	if (!prop)
		return -ENOMEM;

	FUNC1(np, prop);

	return 0;
}