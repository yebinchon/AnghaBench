#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_12__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_13__ {int /*<<< orphan*/  distrust_filemode; } ;
typedef  TYPE_2__ git_index ;
struct TYPE_14__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_FILEMODE_COMMIT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct stat*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_1__**,int /*<<< orphan*/ *,char const*,struct stat*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int FUNC14(git_index_entry **out, git_index *index, const char *path)
{
	git_repository *sub;
	git_buf abspath = GIT_BUF_INIT;
	git_repository *repo = FUNC0(index);
	git_reference *head;
	git_index_entry *entry;
	struct stat st;
	int error;

	if ((error = FUNC2(&abspath, FUNC11(repo), path)) < 0)
		return error;

	if ((error = FUNC13(abspath.ptr, &st)) < 0) {
		FUNC3(GIT_ERROR_OS, "failed to stat repository dir");
		return -1;
	}

	if (FUNC12(&entry, FUNC0(index), path, &st, true) < 0)
		return -1;

	FUNC4(entry, &st, !index->distrust_filemode);

	if ((error = FUNC10(&sub, abspath.ptr)) < 0)
		return error;

	if ((error = FUNC9(&head, sub)) < 0)
		return error;

	FUNC5(&entry->id, FUNC7(head));
	entry->mode = GIT_FILEMODE_COMMIT;

	FUNC6(head);
	FUNC8(sub);
	FUNC1(&abspath);

	*out = entry;
	return 0;
}