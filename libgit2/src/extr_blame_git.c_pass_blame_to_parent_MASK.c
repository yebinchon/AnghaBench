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
typedef  int /*<<< orphan*/  mmfile_t ;
typedef  int /*<<< orphan*/  git_blame__origin ;
typedef  int /*<<< orphan*/  git_blame ;
struct TYPE_3__ {int /*<<< orphan*/  plno; int /*<<< orphan*/  tlno; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ blame_chunk_cb_data ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(
		git_blame *blame,
		git_blame__origin *target,
		git_blame__origin *parent)
{
	size_t last_in_target;
	mmfile_t file_p, file_o;
	blame_chunk_cb_data d = { *blame, *target, *parent, 0, 0 };

	if (!FUNC3(&last_in_target, blame, target))
		return 1; /* nothing remains for this target */

	FUNC2(parent, &file_p);
	FUNC2(target, &file_o);

	if (FUNC1(file_p, file_o, &d) < 0)
		return -1;

	/* The reset (i.e. anything after tlno) are the same as the parent */
	if (FUNC0(blame, d.tlno, d.plno, last_in_target, target, parent) < 0)
		return -1;

	return 0;
}