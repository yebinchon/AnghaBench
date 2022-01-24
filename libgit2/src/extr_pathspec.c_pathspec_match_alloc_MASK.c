#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int datatype; int /*<<< orphan*/ * pathspec; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ git_pathspec_match_list ;
typedef  int /*<<< orphan*/  git_pathspec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static git_pathspec_match_list *FUNC3(
	git_pathspec *ps, int datatype)
{
	git_pathspec_match_list *m = FUNC1(1, sizeof(git_pathspec_match_list));
	if (!m)
		return NULL;

	FUNC2(&m->pool, 1);

	/* need to keep reference to pathspec and increment refcount because
	 * failures array stores pointers to the pattern strings of the
	 * pathspec that had no matches
	 */
	FUNC0(ps);
	m->pathspec = ps;
	m->datatype = datatype;

	return m;
}