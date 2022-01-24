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
struct TYPE_4__ {int /*<<< orphan*/  download_tags; } ;
typedef  TYPE_1__ git_remote ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REMOTE_DOWNLOAD_TAGS_AUTO ; 
 int /*<<< orphan*/  LIVE_REPO_URL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_options ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	git_remote *origin;

	FUNC2(FUNC3(&g_repo, LIVE_REPO_URL, "./foo", &g_options));
	FUNC0(!FUNC6(g_repo));
	FUNC2(FUNC5(&origin, g_repo, "origin"));

	FUNC1(GIT_REMOTE_DOWNLOAD_TAGS_AUTO, origin->download_tags);

	FUNC4(origin);
}