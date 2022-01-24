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
struct string_list {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char*,char**) ; 

__attribute__((used)) static int FUNC5(struct string_list *map, const char *filename,
			     char **repo_abbrev)
{
	char buffer[1024];
	FILE *f;

	if (!filename)
		return 0;

	f = FUNC3(filename, "r");
	if (!f) {
		if (errno == ENOENT)
			return 0;
		return FUNC0("unable to open mailmap at %s", filename);
	}

	while (FUNC2(buffer, sizeof(buffer), f) != NULL)
		FUNC4(map, buffer, repo_abbrev);
	FUNC1(f);
	return 0;
}