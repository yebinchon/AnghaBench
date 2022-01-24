#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_treebuilder ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	git_treebuilder *builder;
	git_oid bid;

	FUNC1(FUNC3(&bid, "fa49b077972391ad58037050f2a75f74e3671e92"));

	/* Ensure that (by default) we can write objects with funny names on
	 * platforms that are not affected.
	 */
	FUNC1(FUNC6(&builder, g_repo, NULL));

#ifndef GIT_WIN32
	FUNC1(FUNC5(NULL, builder, ".git.", &bid, GIT_FILEMODE_BLOB));
	FUNC1(FUNC5(NULL, builder, "git~1", &bid, GIT_FILEMODE_BLOB));
#endif

#ifndef __APPLE__
	FUNC1(FUNC5(NULL, builder, ".git\xef\xbb\xbf", &bid, GIT_FILEMODE_BLOB));
	FUNC1(FUNC5(NULL, builder, ".git\xe2\x80\xad", &bid, GIT_FILEMODE_BLOB));
#endif

	FUNC4(builder);

	/* Now turn on core.protectHFS and core.protectNTFS and validate that these
	 * paths are rejected.
	 */

	FUNC2(g_repo, "core.protectHFS", true);
	FUNC2(g_repo, "core.protectNTFS", true);

	FUNC1(FUNC6(&builder, g_repo, NULL));

	FUNC0(FUNC5(NULL, builder, ".git.", &bid, GIT_FILEMODE_BLOB));
	FUNC0(FUNC5(NULL, builder, "git~1", &bid, GIT_FILEMODE_BLOB));

	FUNC0(FUNC5(NULL, builder, ".git\xef\xbb\xbf", &bid, GIT_FILEMODE_BLOB));
	FUNC0(FUNC5(NULL, builder, ".git\xe2\x80\xad", &bid, GIT_FILEMODE_BLOB));

	FUNC4(builder);
}