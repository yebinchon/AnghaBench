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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 char* objname ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

void
FUNC3(char *f)
{
	int n = FUNC2(f);
	objname = (char*)FUNC0(n+5);
	FUNC1(objname,f);
	if(objname[n-2]=='.'){
		FUNC1(objname+n-1,"$O: ");
	}else{
		FUNC1(objname+n,"$O: ");
	}
}