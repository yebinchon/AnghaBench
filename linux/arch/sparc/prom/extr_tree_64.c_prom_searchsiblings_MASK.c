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
typedef  int /*<<< orphan*/  promlib_buf ;
typedef  scalar_t__ phandle ;

/* Variables and functions */
 int FUNC0 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

phandle FUNC3(phandle node_start, const char *nodename)
{
	phandle thisnode;
	int error;
	char promlib_buf[128];

	for(thisnode = node_start; thisnode;
	    thisnode=FUNC1(thisnode)) {
		error = FUNC0(thisnode, "name", promlib_buf,
					 sizeof(promlib_buf));
		/* Should this ever happen? */
		if(error == -1) continue;
		if(FUNC2(nodename, promlib_buf)==0) return thisnode;
	}

	return 0;
}