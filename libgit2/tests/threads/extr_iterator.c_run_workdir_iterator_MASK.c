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
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_iterator_options ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_8__ {scalar_t__ mode; } ;
typedef  TYPE_2__ git_index_entry ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 scalar_t__ GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  GIT_ITERATOR_DONT_AUTOEXPAND ; 
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_ITEROVER ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_2__ const**,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC11(void *arg)
{
	int error = 0;
	git_repository *repo;
	git_iterator *iter;
	git_iterator_options iter_opts = GIT_ITERATOR_OPTIONS_INIT;
	const git_index_entry *entry = NULL;

	iter_opts.flags = GIT_ITERATOR_DONT_AUTOEXPAND;

	FUNC1(FUNC9(&repo, FUNC10(_repo)));
	FUNC1(FUNC6(
		&iter, repo, NULL, NULL, &iter_opts));

	while (!error) {
		if (entry && entry->mode == GIT_FILEMODE_TREE) {
			error = FUNC4(&entry, iter);

			if (error == GIT_ENOTFOUND)
				error = FUNC3(&entry, iter);
		} else {
			error = FUNC3(&entry, iter);
		}

		if (!error)
			(void)FUNC5(iter);
	}

	FUNC0(GIT_ITEROVER, error);

	FUNC7(iter);
	FUNC8(repo);
	FUNC2();
	return arg;
}