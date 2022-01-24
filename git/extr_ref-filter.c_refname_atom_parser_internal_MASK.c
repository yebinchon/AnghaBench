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
struct strbuf {int dummy; } ;
struct refname_atom {int /*<<< orphan*/  rstrip; int /*<<< orphan*/  option; int /*<<< orphan*/  lstrip; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_LSTRIP ; 
 int /*<<< orphan*/  R_NORMAL ; 
 int /*<<< orphan*/  R_RSTRIP ; 
 int /*<<< orphan*/  R_SHORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*,char const**) ; 
 int FUNC2 (struct strbuf*,int,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct refname_atom *atom, const char *arg,
					 const char *name, struct strbuf *err)
{
	if (!arg)
		atom->option = R_NORMAL;
	else if (!FUNC3(arg, "short"))
		atom->option = R_SHORT;
	else if (FUNC1(arg, "lstrip=", &arg) ||
		 FUNC1(arg, "strip=", &arg)) {
		atom->option = R_LSTRIP;
		if (FUNC4(arg, 10, &atom->lstrip))
			return FUNC2(err, -1, FUNC0("Integer value expected refname:lstrip=%s"), arg);
	} else if (FUNC1(arg, "rstrip=", &arg)) {
		atom->option = R_RSTRIP;
		if (FUNC4(arg, 10, &atom->rstrip))
			return FUNC2(err, -1, FUNC0("Integer value expected refname:rstrip=%s"), arg);
	} else
		return FUNC2(err, -1, FUNC0("unrecognized %%(%s) argument: %s"), name, arg);
	return 0;
}