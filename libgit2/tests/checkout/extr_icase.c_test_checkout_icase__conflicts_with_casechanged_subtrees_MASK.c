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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_SAFE ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  repo ; 

void FUNC13(void)
{
	git_reference *orig_ref;
	git_object *orig, *subtrees;
	git_oid oid;
	git_checkout_options checkout_opts = GIT_CHECKOUT_OPTIONS_INIT;

	checkout_opts.checkout_strategy = GIT_CHECKOUT_SAFE;

	FUNC1(FUNC8(&orig_ref, repo, "HEAD", 100));
	FUNC1(FUNC6(&orig, repo, FUNC10(orig_ref), GIT_OBJECT_COMMIT));
	FUNC1(FUNC11(repo, (git_object *)orig, GIT_RESET_HARD, NULL));

	FUNC3(FUNC12("testrepo/AB", 0777));
	FUNC3(FUNC12("testrepo/AB/C", 0777));
	FUNC2("testrepo/AB/C/3.txt", "Foobar!\n", 8, O_RDWR|O_CREAT, 0666);

	FUNC1(FUNC9(&oid, repo, "refs/heads/subtrees"));
	FUNC1(FUNC6(&subtrees, repo, &oid, GIT_OBJECT_ANY));

	FUNC0(FUNC4(repo, subtrees, &checkout_opts));

	FUNC5(orig);
	FUNC5(subtrees);
    FUNC7(orig_ref);
}