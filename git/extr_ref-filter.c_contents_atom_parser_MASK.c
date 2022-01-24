#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nlines; int /*<<< orphan*/  option; } ;
struct TYPE_4__ {TYPE_1__ contents; } ;
struct used_atom {TYPE_2__ u; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_BARE ; 
 int /*<<< orphan*/  C_BODY ; 
 int /*<<< orphan*/  C_LINES ; 
 int /*<<< orphan*/  C_SIG ; 
 int /*<<< orphan*/  C_SUB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*,char const**) ; 
 int FUNC2 (struct strbuf*,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ref_format const*,struct used_atom*,char const*,struct strbuf*) ; 

__attribute__((used)) static int FUNC6(const struct ref_format *format, struct used_atom *atom,
				const char *arg, struct strbuf *err)
{
	if (!arg)
		atom->u.contents.option = C_BARE;
	else if (!FUNC3(arg, "body"))
		atom->u.contents.option = C_BODY;
	else if (!FUNC3(arg, "signature"))
		atom->u.contents.option = C_SIG;
	else if (!FUNC3(arg, "subject"))
		atom->u.contents.option = C_SUB;
	else if (FUNC1(arg, "trailers", &arg)) {
		FUNC1(arg, ":", &arg);
		if (FUNC5(format, atom, *arg ? arg : NULL, err))
			return -1;
	} else if (FUNC1(arg, "lines=", &arg)) {
		atom->u.contents.option = C_LINES;
		if (FUNC4(arg, 10, &atom->u.contents.nlines))
			return FUNC2(err, -1, FUNC0("positive value expected contents:lines=%s"), arg);
	} else
		return FUNC2(err, -1, FUNC0("unrecognized %%(contents) argument: %s"), arg);
	return 0;
}