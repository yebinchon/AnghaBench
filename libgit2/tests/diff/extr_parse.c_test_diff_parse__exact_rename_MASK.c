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
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void FUNC4(void)
{
	const char *content =
	    "---\n"
	    " old_name.c => new_name.c | 0\n"
	    " 1 file changed, 0 insertions(+), 0 deletions(-)\n"
	    " rename old_name.c => new_name.c  (100%)\n"
	    "\n"
	    "diff --git a/old_name.c b/new_name.c\n"
	    "similarity index 100%\n"
	    "rename from old_name.c\n"
	    "rename to new_name.c\n"
	    "-- \n"
	    "2.9.3\n";
	git_diff *diff;

	FUNC0(FUNC2(
		&diff, content, FUNC3(content)));
	FUNC1(diff);
}