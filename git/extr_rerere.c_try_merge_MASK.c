#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rerere_id {int dummy; } ;
struct index_state {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ mmfile_t ;
typedef  int /*<<< orphan*/  mmbuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,char*,TYPE_1__*,char*,struct index_state*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rerere_id const*,char*) ; 

__attribute__((used)) static int FUNC4(struct index_state *istate,
		     const struct rerere_id *id, const char *path,
		     mmfile_t *cur, mmbuffer_t *result)
{
	int ret;
	mmfile_t base = {NULL, 0}, other = {NULL, 0};

	if (FUNC2(&base, FUNC3(id, "preimage")) ||
	    FUNC2(&other, FUNC3(id, "postimage")))
		ret = 1;
	else
		/*
		 * A three-way merge. Note that this honors user-customizable
		 * low-level merge driver settings.
		 */
		ret = FUNC1(result, path, &base, NULL, cur, "", &other, "",
			       istate, NULL);

	FUNC0(base.ptr);
	FUNC0(other.ptr);

	return ret;
}