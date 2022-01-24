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
typedef  scalar_t__ phandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 scalar_t__ prom_getprop_name ; 
 int FUNC1 (scalar_t__,char const*) ; 

int FUNC2(phandle node, const char *prop,
		     char *buffer, int bufsize)
{
	unsigned long args[8];
	int plen;

	plen = FUNC1(node, prop);
	if ((plen > bufsize) || (plen == 0) || (plen == -1))
		return -1;

	args[0] = (unsigned long) prom_getprop_name;
	args[1] = 4;
	args[2] = 1;
	args[3] = (unsigned int) node;
	args[4] = (unsigned long) prop;
	args[5] = (unsigned long) buffer;
	args[6] = bufsize;
	args[7] = (unsigned long) -1;

	FUNC0(args);

	return (int) args[7];
}