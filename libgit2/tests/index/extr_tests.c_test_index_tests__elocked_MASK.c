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
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {int /*<<< orphan*/  index_file_path; } ;
typedef  TYPE_1__ git_index ;
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_8__ {int /*<<< orphan*/  klass; } ;
typedef  TYPE_2__ git_error ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ELOCKED ; 
 int GIT_ERROR_INDEX ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cleanup_myrepo ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_repository *repo;
	git_index *index;
	git_filebuf file = GIT_FILEBUF_INIT;
	const git_error *err;
	int error;

	FUNC2(&cleanup_myrepo, NULL);

	FUNC1(FUNC10(&repo, "./myrepo", 0));
	FUNC1(FUNC9(&index, repo));

	/* Lock the index file so we fail to lock it */
	FUNC1(FUNC5(&file, index->index_file_path, 0, 0666));
	error = FUNC7(index);
	FUNC0(GIT_ELOCKED, error);

	err = FUNC3();
	FUNC0(err->klass, GIT_ERROR_INDEX);

	FUNC4(&file);
	FUNC6(index);
	FUNC8(repo);
}