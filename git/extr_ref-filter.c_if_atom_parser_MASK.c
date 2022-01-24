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
struct TYPE_4__ {int /*<<< orphan*/  cmp_status; int /*<<< orphan*/  str; } ;
struct TYPE_3__ {TYPE_2__ if_then_else; } ;
struct used_atom {TYPE_1__ u; } ;
struct strbuf {int dummy; } ;
struct ref_format {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPARE_EQUAL ; 
 int /*<<< orphan*/  COMPARE_NONE ; 
 int /*<<< orphan*/  COMPARE_UNEQUAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct strbuf*,int,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC3(const struct ref_format *format, struct used_atom *atom,
			  const char *arg, struct strbuf *err)
{
	if (!arg) {
		atom->u.if_then_else.cmp_status = COMPARE_NONE;
		return 0;
	} else if (FUNC1(arg, "equals=", &atom->u.if_then_else.str)) {
		atom->u.if_then_else.cmp_status = COMPARE_EQUAL;
	} else if (FUNC1(arg, "notequals=", &atom->u.if_then_else.str)) {
		atom->u.if_then_else.cmp_status = COMPARE_UNEQUAL;
	} else
		return FUNC2(err, -1, FUNC0("unrecognized %%(if) argument: %s"), arg);
	return 0;
}