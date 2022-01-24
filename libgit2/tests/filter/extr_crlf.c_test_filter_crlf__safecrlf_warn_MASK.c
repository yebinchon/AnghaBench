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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (char*) ; 

void FUNC11(void)
{
	git_filter_list *fl;
	git_filter *crlf;
	git_buf in = {0}, out = GIT_BUF_INIT;

	FUNC3(g_repo, "core.safecrlf", "warn");

	FUNC2(FUNC7(
		&fl, g_repo, GIT_FILTER_TO_ODB, 0));

	crlf = FUNC9(GIT_FILTER_CRLF);
	FUNC0(crlf != NULL);

	FUNC2(FUNC8(fl, crlf, NULL));

	/* Normalized \r\n succeeds with safecrlf=warn */
	in.ptr = "Normal\r\nCRLF\r\nline-endings.\r\n";
	in.size = FUNC10(in.ptr);

	FUNC2(FUNC5(&out, fl, &in));
	FUNC1("Normal\nCRLF\nline-endings.\n", out.ptr);

	/* Mix of line endings succeeds with safecrlf=warn */
	in.ptr = "Mixed\nup\r\nLF\nand\r\nCRLF\nline-endings.\r\n";
	in.size = FUNC10(in.ptr);

	FUNC2(FUNC5(&out, fl, &in));
	/* TODO: check for warning */
	FUNC1("Mixed\nup\nLF\nand\nCRLF\nline-endings.\n", out.ptr);

	/* Normalized \n is reversible, so does not fail with safecrlf=warn */
	in.ptr = "Normal\nLF\nonly\nline-endings.\n";
	in.size = FUNC10(in.ptr);

	FUNC2(FUNC5(&out, fl, &in));
	FUNC1(in.ptr, out.ptr);

	FUNC6(fl);
	FUNC4(&out);
}