#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_config_level_t ;
typedef  int /*<<< orphan*/  git_config_entries ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_9__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  stamp; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ config_file ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct stat*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int FUNC7(
	git_config_entries *entries,
	const git_repository *repo,
	config_file *file,
	git_config_level_t level,
	int depth)
{
	git_buf contents = GIT_BUF_INIT;
	struct stat st;
	int error;

	if (FUNC6(file->path, &st) < 0) {
		error = FUNC5(errno, file->path, "stat");
		goto out;
	}

	if ((error = FUNC3(&contents, file->path)) < 0)
		goto out;

	FUNC2(&file->stamp, &st);
	if ((error = FUNC4(&file->checksum, contents.ptr, contents.size)) < 0)
		goto out;

	if ((error = FUNC0(entries, repo, file, level, depth,
					     contents.ptr, contents.size)) < 0)
		goto out;

out:
	FUNC1(&contents);
	return error;
}