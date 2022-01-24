#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  int /*<<< orphan*/  git_filter ;
struct TYPE_7__ {char* ptr; void* size; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_8__ {int /*<<< orphan*/  klass; } ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_FILTER ; 
 int /*<<< orphan*/  GIT_FILTER_CRLF ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_4__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 void* FUNC13 (char*) ; 

void FUNC14(void)
{
	git_filter_list *fl;
	git_filter *crlf;
	git_buf in = {0}, out = GIT_BUF_INIT;

	FUNC5(g_repo, "core.safecrlf", true);

	FUNC4(FUNC10(
		&fl, g_repo, GIT_FILTER_TO_ODB, 0));

	crlf = FUNC12(GIT_FILTER_CRLF);
	FUNC0(crlf != NULL);

	FUNC4(FUNC11(fl, crlf, NULL));

	/* Normalized \r\n succeeds with safecrlf */
	in.ptr = "Normal\r\nCRLF\r\nline-endings.\r\n";
	in.size = FUNC13(in.ptr);

	FUNC4(FUNC8(&out, fl, &in));
	FUNC2("Normal\nCRLF\nline-endings.\n", out.ptr);

	/* Mix of line endings fails with safecrlf */
	in.ptr = "Mixed\nup\r\nLF\nand\r\nCRLF\nline-endings.\r\n";
	in.size = FUNC13(in.ptr);

	FUNC3(FUNC8(&out, fl, &in));
	FUNC1(FUNC7()->klass, GIT_ERROR_FILTER);

	/* Normalized \n fails for autocrlf=true when safecrlf=true */
	in.ptr = "Normal\nLF\nonly\nline-endings.\n";
	in.size = FUNC13(in.ptr);

	FUNC3(FUNC8(&out, fl, &in));
	FUNC1(FUNC7()->klass, GIT_ERROR_FILTER);

	/* String with \r but without \r\n does not fail with safecrlf */
	in.ptr = "Normal\nCR only\rand some more\nline-endings.\n";
	in.size = FUNC13(in.ptr);

	FUNC4(FUNC8(&out, fl, &in));
	FUNC2("Normal\nCR only\rand some more\nline-endings.\n", out.ptr);

	FUNC9(fl);
	FUNC6(&out);
}