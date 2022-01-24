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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_describe_result ;
struct TYPE_4__ {int show_commit_oid_as_fallback; } ;
typedef  TYPE_1__ git_describe_options ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 TYPE_1__ GIT_DESCRIBE_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  delete_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 

void FUNC10(void)
{
	git_repository *repo;
	git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
	git_buf buf = GIT_BUF_INIT;
	git_object *object;
	git_describe_result *result = NULL;

	repo = FUNC3("testrepo.git");
	FUNC1(FUNC9(&object, repo, "HEAD"));

	FUNC1(FUNC8(repo, delete_cb, NULL));

	/* Impossible to describe without falling back to OIDs */
	FUNC0(FUNC5(&result, object, &opts));

	/* Try again with OID fallbacks */
	opts.show_commit_oid_as_fallback = 1;
	FUNC1(FUNC5(&result, object, &opts));

	FUNC6(result);
	FUNC7(object);
	FUNC4(&buf);
	FUNC2();
}