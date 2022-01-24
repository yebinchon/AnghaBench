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
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_LF_TEXT_AS_CRLF ; 
 int /*<<< orphan*/  ALL_LF_TEXT_AS_LF ; 
 int /*<<< orphan*/  ALL_LF_TEXT_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

void FUNC7(void)
{
	git_blob *blob;
	git_buf buf = { 0 };

	FUNC1(FUNC6(
		(git_object **)&blob, g_repo, "799770d")); /* all-lf */

	FUNC0(ALL_LF_TEXT_RAW, FUNC4(blob));

	FUNC1(FUNC2(&buf, blob, "file.bin", NULL));

	FUNC0(ALL_LF_TEXT_RAW, buf.ptr);

	FUNC1(FUNC2(&buf, blob, "file.crlf", NULL));

	/* in this case, raw content has crlf in it already */
	FUNC0(ALL_LF_TEXT_AS_CRLF, buf.ptr);

	FUNC1(FUNC2(&buf, blob, "file.lf", NULL));

	/* we never convert CRLF -> LF on platforms that have LF */
	FUNC0(ALL_LF_TEXT_AS_LF, buf.ptr);

	FUNC5(&buf);
	FUNC3(blob);
}