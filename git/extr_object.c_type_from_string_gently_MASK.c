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
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 char** object_type_strings ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,size_t) ; 

int FUNC5(const char *str, ssize_t len, int gentle)
{
	int i;

	if (len < 0)
		len = FUNC3(str);

	for (i = 1; i < FUNC0(object_type_strings); i++)
		if (!FUNC4(str, object_type_strings[i], len) &&
		    object_type_strings[i][len] == '\0')
			return i;

	if (gentle)
		return -1;

	FUNC2(FUNC1("invalid object type \"%s\""), str);
}