#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ follow_renames; } ;
struct diff_options {TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (struct object_id const*,struct object_id const*,struct strbuf*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*,struct object_id const*,struct strbuf*,struct diff_options*) ; 

int FUNC6(const struct object_id *old_oid,
		  const struct object_id *new_oid,
		  const char *base_str, struct diff_options *opt)
{
	struct strbuf base;
	int retval;

	FUNC3(&base, PATH_MAX);
	FUNC2(&base, base_str);

	retval = FUNC1(old_oid, new_oid, &base, opt);
	if (!*base_str && opt->flags.follow_renames && FUNC0())
		FUNC5(old_oid, new_oid, &base, opt);

	FUNC4(&base);

	return retval;
}