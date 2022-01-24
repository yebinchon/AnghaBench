#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  int /*<<< orphan*/  git_filter ;
struct TYPE_6__ {char* ptr; void* size; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILTER_CRLF ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (char*) ; 

void FUNC10(void)
{
	git_filter_list *fl;
	git_filter *crlf;
	git_buf in = {0}, out = GIT_BUF_INIT;

	FUNC2(FUNC6(
		&fl, g_repo, GIT_FILTER_TO_ODB, 0));

	crlf = FUNC8(GIT_FILTER_CRLF);
	FUNC0(crlf != NULL);

	FUNC2(FUNC7(fl, crlf, NULL));

	/* Normalized \r\n succeeds with safecrlf */
	in.ptr = "Normal\r\nCRLF\r\nline-endings.\r\n";
	in.size = FUNC9(in.ptr);

	FUNC2(FUNC4(&out, fl, &in));
	FUNC1("Normal\nCRLF\nline-endings.\n", out.ptr);

	/* Mix of line endings fails with safecrlf */
	in.ptr = "Mixed\nup\r\nLF\nand\r\nCRLF\nline-endings.\r\n";
	in.size = FUNC9(in.ptr);

	FUNC2(FUNC4(&out, fl, &in));
	FUNC1("Mixed\nup\nLF\nand\nCRLF\nline-endings.\n", out.ptr);

	/* Normalized \n fails with safecrlf */
	in.ptr = "Normal\nLF\nonly\nline-endings.\n";
	in.size = FUNC9(in.ptr);

	FUNC2(FUNC4(&out, fl, &in));
	FUNC1("Normal\nLF\nonly\nline-endings.\n", out.ptr);

	FUNC5(fl);
	FUNC3(&out);
}