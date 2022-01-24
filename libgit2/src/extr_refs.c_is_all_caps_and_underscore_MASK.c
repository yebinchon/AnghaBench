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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(const char *name, size_t len)
{
	size_t i;
	char c;

	FUNC0(name && len > 0);

	for (i = 0; i < len; i++)
	{
		c = name[i];
		if ((c < 'A' || c > 'Z') && c != '_')
			return false;
	}

	if (*name == '_' || name[len - 1] == '_')
		return false;

	return true;
}