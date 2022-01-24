#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_NEWLINE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	char *pat = "[^={} \t]+";
	char *str = "={}\nfred";
	regex_t r;
	regmatch_t m[1];

	if (FUNC1(&r, pat, REG_EXTENDED | REG_NEWLINE))
		FUNC0("failed regcomp() for pattern '%s'", pat);
	if (FUNC2(&r, str, 1, m, 0))
		FUNC0("no match of pattern '%s' to string '%s'", pat, str);

	/* http://sourceware.org/bugzilla/show_bug.cgi?id=3957  */
	if (m[0].rm_so == 3) /* matches '\n' when it should not */
		FUNC0("regex bug confirmed: re-build git with NO_REGEX=1");

	return 0;
}