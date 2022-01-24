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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,char*) ; 

__attribute__((used)) static int FUNC4(struct string_list *out, const char *path)
{
	DIR *dh;
	struct dirent *de;

	dh = FUNC1(path);
	if (!dh)
		return -1;

	while ((de = FUNC2(dh)))
		if (de->d_name[0] != '.')
			FUNC3(out, de->d_name);

	FUNC0(dh);
	return 0;
}