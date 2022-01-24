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
typedef  int /*<<< orphan*/  quakefile_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int MAX_PATH ; 
 char* FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

quakefile_t *FUNC5(char *filter)
{
	char *str;
	char newfilter[MAX_PATH];
	char pakfilter[MAX_PATH];
	char filefilter[MAX_PATH];

	FUNC3(newfilter, filter);
	FUNC0(newfilter);
	FUNC3(pakfilter, newfilter);

	str = FUNC2(pakfilter, ".pak", false);
	if (!str) str = FUNC2(pakfilter, ".pk3", false);

	if (str)
	{
		str += FUNC4(".pak");
		if (*str)
		{
			*str++ = '\0';
			while(*str == '\\' || *str == '/') str++;
			FUNC3(filefilter, str);
			return FUNC1(pakfilter, filefilter);
		} //end if
	} //end else
	return FUNC1(NULL, newfilter);
}