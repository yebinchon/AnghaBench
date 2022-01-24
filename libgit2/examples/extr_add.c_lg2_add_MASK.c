#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct print_payload {int options; int /*<<< orphan*/ * repo; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/ * git_index_matched_path_cb ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int SKIP ; 
 int UPDATE ; 
 int VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct print_payload*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,struct print_payload*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,char**) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int,char**) ; 
 int /*<<< orphan*/  print_matched_cb ; 

int FUNC8(git_repository *repo, int argc, char** argv)
{
	git_index_matched_path_cb matched_cb = NULL;
	git_index *index;
	git_strarray array = {0};
	int options = 0, count = 0;
	struct print_payload payload = {0};

	FUNC7(&options, &count, argc, argv);
	FUNC6(&array, argc-count, argv+count);

	FUNC0(FUNC5(&index, repo), "Could not open repository index", NULL);

	/* Setup a callback if the requested options need it */
	if ((options & VERBOSE) || (options & SKIP)) {
		matched_cb = &print_matched_cb;
	}

	/* Perform the requested action with the index and files */
	payload.options = options;
	payload.repo = repo;

	if (options & UPDATE) {
		FUNC3(index, &array, matched_cb, &payload);
	} else {
		FUNC1(index, &array, 0, matched_cb, &payload);
	}

	/* Cleanup memory */
	FUNC4(index);
	FUNC2(index);

	return 0;
}