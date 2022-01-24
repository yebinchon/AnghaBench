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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REPOSITORY_OPEN_CROSS_FS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(
	git_buf *out,
	const char *start_path,
	int across_fs,
	const char *ceiling_dirs)
{
	uint32_t flags = across_fs ? GIT_REPOSITORY_OPEN_CROSS_FS : 0;

	FUNC0(start_path);

	FUNC2(out);

	return FUNC1(out, NULL, NULL, NULL, start_path, flags, ceiling_dirs);
}