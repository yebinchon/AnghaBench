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
struct branch {TYPE_1__** merge; int /*<<< orphan*/  name; int /*<<< orphan*/  refname; } ;
struct TYPE_2__ {char const* dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* FUNC1 (struct strbuf*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

const char *FUNC3(struct branch *branch, struct strbuf *err)
{
	if (!branch)
		return FUNC1(err, FUNC0("HEAD does not point to a branch"));

	if (!branch->merge || !branch->merge[0]) {
		/*
		 * no merge config; is it because the user didn't define any,
		 * or because it is not a real branch, and get_branch
		 * auto-vivified it?
		 */
		if (!FUNC2(branch->refname))
			return FUNC1(err, FUNC0("no such branch: '%s'"),
					 branch->name);
		return FUNC1(err,
				 FUNC0("no upstream configured for branch '%s'"),
				 branch->name);
	}

	if (!branch->merge[0]->dst)
		return FUNC1(err,
				 FUNC0("upstream branch '%s' not stored as a remote-tracking branch"),
				 branch->merge[0]->src);

	return branch->merge[0]->dst;
}