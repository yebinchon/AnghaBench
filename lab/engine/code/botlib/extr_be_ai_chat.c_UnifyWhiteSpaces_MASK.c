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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 

void FUNC3(char *string)
{
	char *ptr, *oldptr;

	for (ptr = oldptr = string; *ptr; oldptr = ptr)
	{
		while(*ptr && FUNC0(*ptr)) ptr++;
		if (ptr > oldptr)
		{
			//if not at the start and not at the end of the string
			//write only one space
			if (oldptr > string && *ptr) *oldptr++ = ' ';
			//remove all other white spaces
			if (ptr > oldptr) FUNC1(oldptr, ptr, FUNC2(ptr)+1);
		} //end if
		while(*ptr && !FUNC0(*ptr)) ptr++;
	} //end while
}