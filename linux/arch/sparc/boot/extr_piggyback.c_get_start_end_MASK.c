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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 unsigned int FUNC6 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(const char *filename, unsigned int *start,
                                               unsigned int *end)
{
	FILE *map;
	char buffer[1024];

	*start = 0;
	*end = 0;
	map = FUNC4(filename, "r");
	if (!map)
		FUNC0(filename);
	while (FUNC3(buffer, 1024, map)) {
		if (FUNC5(buffer))
			*start = FUNC6(buffer, NULL, 16);
		else if (FUNC1(buffer))
			*end = FUNC6(buffer, NULL, 16);
	}
	FUNC2 (map);

	if (*start == 0 || *end == 0)
		return 0;

	return 1;
}