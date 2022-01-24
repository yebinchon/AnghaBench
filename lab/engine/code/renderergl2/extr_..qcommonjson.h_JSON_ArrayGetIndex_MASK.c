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
 char* FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*,char const*) ; 

unsigned int FUNC2(const char *json, const char *jsonEnd, const char **indexes, unsigned int numIndexes)
{
	unsigned int length = 0;

	for (json = FUNC0(json, jsonEnd); json; json = FUNC1(json, jsonEnd))
	{
		if (indexes && numIndexes)
		{
			*indexes++ = json;
			numIndexes--;
		}
		length++;
	}

	return length;
}