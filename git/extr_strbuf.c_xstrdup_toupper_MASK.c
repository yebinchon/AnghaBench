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
 size_t FUNC0 (char const*) ; 
 char FUNC1 (char const) ; 
 char* FUNC2 (size_t) ; 

char *FUNC3(const char *string)
{
	char *result;
	size_t len, i;

	len = FUNC0(string);
	result = FUNC2(len);
	for (i = 0; i < len; i++)
		result[i] = FUNC1(string[i]);
	return result;
}