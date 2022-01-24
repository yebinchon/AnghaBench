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
 char* FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char const*,char const*) ; 
 unsigned int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char const*,unsigned int) ; 

const char *FUNC6(const char *json, const char *jsonEnd, const char *name)
{
	unsigned int nameLen = FUNC4(name);

	for (json = FUNC0(json, jsonEnd); json; json = FUNC1(json, jsonEnd))
	{
		if (*json == '"')
		{
			const char *thisNameStart, *thisNameEnd;

			thisNameStart = json + 1;
			json = FUNC3(json, jsonEnd);
			thisNameEnd = json - 1;
			json = FUNC2(json, jsonEnd);

			if ((unsigned int)(thisNameEnd - thisNameStart) == nameLen)
				if (FUNC5(thisNameStart, name, nameLen) == 0)
					return json;
		}
	}

	return NULL;
}