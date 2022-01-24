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
struct testgroup_t {char* prefix; struct testcase_t* cases; } ;
struct testcase_t {int flags; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  fullname ;

/* Variables and functions */
 int LONGEST_TEST_NAME ; 
 int TT_OFF_BY_DEFAULT ; 
 int TT_SKIP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 char const* FUNC4 (char const*,char*) ; 

int
FUNC5(struct testgroup_t *groups, const char *arg, int set, unsigned long flag)
{
	int i, j;
	size_t length = LONGEST_TEST_NAME;
	char fullname[LONGEST_TEST_NAME];
	int found=0;
	if (FUNC4(arg, ".."))
		length = FUNC4(arg,"..")-arg;
	for (i=0; groups[i].prefix; ++i) {
		for (j=0; groups[i].cases[j].name; ++j) {
			struct testcase_t *testcase = &groups[i].cases[j];
			FUNC2(fullname, sizeof(fullname), "%s%s",
				 groups[i].prefix, testcase->name);
			if (!flag) { /* Hack! */
				FUNC0("    %s", fullname);
				if (testcase->flags & TT_OFF_BY_DEFAULT)
					FUNC1("   (Off by default)");
				else if (testcase->flags & TT_SKIP)
					FUNC1("  (DISABLED)");
				else
					FUNC1("");
			}
			if (!FUNC3(fullname, arg, length)) {
				if (set)
					testcase->flags |= flag;
				else
					testcase->flags &= ~flag;
				++found;
			}
		}
	}
	return found;
}