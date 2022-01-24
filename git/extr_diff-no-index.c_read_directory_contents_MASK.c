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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *path, struct string_list *list)
{
	DIR *dir;
	struct dirent *e;

	if (!(dir = FUNC3(path)))
		return FUNC1("Could not open directory %s", path);

	while ((e = FUNC4(dir)))
		if (!FUNC2(e->d_name))
			FUNC5(list, e->d_name);

	FUNC0(dir);
	return 0;
}