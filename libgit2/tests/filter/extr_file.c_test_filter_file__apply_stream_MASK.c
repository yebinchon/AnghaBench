#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* free ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_6__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct buf_writestream {TYPE_3__ base; TYPE_1__ buf; TYPE_2__ member_0; } ;
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  int /*<<< orphan*/  git_filter ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILTER_CRLF ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 int /*<<< orphan*/  buf_writestream_close ; 
 int /*<<< orphan*/  buf_writestream_free ; 
 int /*<<< orphan*/  buf_writestream_write ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

void FUNC9(void)
{
	git_filter_list *fl;
	git_filter *crlf;
	struct buf_writestream write_target = { {
		buf_writestream_write,
		buf_writestream_close,
		buf_writestream_free } };

	FUNC2(FUNC4(
		&fl, g_repo, GIT_FILTER_TO_ODB, 0));

	crlf = FUNC7(GIT_FILTER_CRLF);
	FUNC0(crlf != NULL);

	FUNC2(FUNC5(fl, crlf, NULL));

	FUNC2(FUNC6(fl, g_repo, "all-crlf", &write_target.base));
	FUNC1("crlf\ncrlf\ncrlf\ncrlf\n", write_target.buf.ptr);

	FUNC3(fl);
	write_target.base.free(&write_target.base);
}