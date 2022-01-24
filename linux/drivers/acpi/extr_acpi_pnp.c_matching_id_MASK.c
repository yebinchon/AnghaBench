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
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 
 char FUNC2 (char const) ; 

__attribute__((used)) static bool FUNC3(const char *idstr, const char *list_id)
{
	int i;

	if (FUNC1(idstr, list_id, 3))
		return false;

	for (i = 3; i < 7; i++) {
		char c = FUNC2(idstr[i]);

		if (!FUNC0(c)
		    || (list_id[i] != 'X' && c != FUNC2(list_id[i])))
			return false;
	}
	return true;
}