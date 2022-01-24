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
struct TYPE_3__ {int /*<<< orphan*/  line_dels; int /*<<< orphan*/  line_adds; int /*<<< orphan*/  line_ctxt; int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/ * file_status; int /*<<< orphan*/  files; } ;
typedef  TYPE_1__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_ADDED ; 
 size_t GIT_DELTA_CONFLICTED ; 
 size_t GIT_DELTA_DELETED ; 
 size_t GIT_DELTA_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	diff_expects exp;

	FUNC1(&exp, 0);

	FUNC0(8, exp.files);
	FUNC0(3, exp.file_status[GIT_DELTA_ADDED]);
	FUNC0(2, exp.file_status[GIT_DELTA_DELETED]);
	FUNC0(2, exp.file_status[GIT_DELTA_MODIFIED]);
	FUNC0(1, exp.file_status[GIT_DELTA_CONFLICTED]);

	FUNC0(7, exp.hunks);

	FUNC0(9, exp.lines);
	FUNC0(2, exp.line_ctxt);
	FUNC0(5, exp.line_adds);
	FUNC0(2, exp.line_dels);
}