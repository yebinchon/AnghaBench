#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ git_blob_filter_options ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_LF_TEXT_RAW ; 
 int /*<<< orphan*/  GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES ; 
 TYPE_2__ GIT_BLOB_FILTER_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 

void FUNC7(void)
{
	git_blob *blob;
	git_buf buf = { 0 };
	git_blob_filter_options opts = GIT_BLOB_FILTER_OPTIONS_INIT;

	opts.flags |= GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES;

	FUNC1(FUNC6(
		(git_object **)&blob, g_repo, "799770d")); /* all-lf */

	FUNC0(ALL_LF_TEXT_RAW, FUNC4(blob));

	FUNC1(FUNC2(&buf, blob, "file.bin", &opts));
	FUNC0(ALL_LF_TEXT_RAW, buf.ptr);

	/* No attributes mean these are all treated literally */
	FUNC1(FUNC2(&buf, blob, "file.crlf", &opts));
	FUNC0(ALL_LF_TEXT_RAW, buf.ptr);

	FUNC1(FUNC2(&buf, blob, "file.lf", &opts));
	FUNC0(ALL_LF_TEXT_RAW, buf.ptr);

	FUNC5(&buf);
	FUNC3(blob);
}