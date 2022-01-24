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

/* Variables and functions */
 int /*<<< orphan*/  GIT_REMOTE_DOWNLOAD_TAGS_ALL ; 
 int /*<<< orphan*/  GIT_REMOTE_DOWNLOAD_TAGS_AUTO ; 
 int /*<<< orphan*/  GIT_REMOTE_DOWNLOAD_TAGS_NONE ; 
 int /*<<< orphan*/  _remote ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	const char *name = FUNC2(_remote);

	FUNC3(_repo, name, GIT_REMOTE_DOWNLOAD_TAGS_ALL);
	FUNC1(_repo, "remote.test.tagopt", "--tags");

	FUNC3(_repo, name, GIT_REMOTE_DOWNLOAD_TAGS_NONE);
	FUNC1(_repo, "remote.test.tagopt", "--no-tags");

	FUNC3(_repo, name, GIT_REMOTE_DOWNLOAD_TAGS_AUTO);
	FUNC0(_repo, "remote.test.tagopt", false);
}