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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int GIT_CHECKOUT_UPDATE_ONLY ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(void)
{
	git_oid oid;
	git_object *obj;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	opts.checkout_strategy = GIT_CHECKOUT_FORCE | GIT_CHECKOUT_UPDATE_ONLY;

	FUNC7();
	FUNC1(FUNC6(&oid, repo, "refs/heads/master"));
	FUNC1(FUNC5(&obj, repo, &oid, GIT_OBJECT_ANY));
	FUNC1(FUNC2(repo, obj, &opts));
	FUNC0(0, FUNC3(repo_index));

	FUNC4(obj);
}