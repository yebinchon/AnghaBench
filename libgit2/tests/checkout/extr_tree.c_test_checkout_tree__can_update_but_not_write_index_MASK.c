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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int GIT_CHECKOUT_DONT_WRITE_INDEX ; 
 int GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_RESET_HARD ; 
 int GIT_STATUS_INDEX_NEW ; 
 int GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_object ; 
 int /*<<< orphan*/  g_opts ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (char*) ; 
 unsigned int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int*,int /*<<< orphan*/ *,char*) ; 

void FUNC16(void)
{
	git_oid oid;
	git_object *head;
	unsigned int status;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	git_index *index;
	git_repository *other;

	opts.checkout_strategy |=
		GIT_CHECKOUT_FORCE | GIT_CHECKOUT_DONT_WRITE_INDEX;

	FUNC1(FUNC9(&oid, g_repo, "HEAD"));
	FUNC1(FUNC6(&head, g_repo, &oid, GIT_OBJECT_ANY));

	FUNC1(FUNC13(g_repo, head, GIT_RESET_HARD, &g_opts));

	FUNC0(false, FUNC7("./testrepo/ab/"));

	FUNC1(FUNC14(&g_object, g_repo, "subtrees"));

	FUNC1(FUNC2(g_repo, g_object, &opts));

	FUNC0(true, FUNC8("./testrepo/ab/de/2.txt"));
	FUNC1(FUNC15(&status, g_repo, "ab/de/2.txt"));
	FUNC0(GIT_STATUS_INDEX_NEW, status);

	FUNC1(FUNC12(&other, "testrepo"));
	FUNC1(FUNC15(&status, other, "ab/de/2.txt"));
	FUNC0(GIT_STATUS_WT_NEW, status);
	FUNC10(other);

	FUNC1(FUNC11(&index, g_repo));
	FUNC1(FUNC4(index));

	FUNC1(FUNC12(&other, "testrepo"));
	FUNC1(FUNC15(&status, other, "ab/de/2.txt"));
	FUNC0(GIT_STATUS_INDEX_NEW, status);
	FUNC10(other);

	FUNC5(head);
	FUNC3(index);
}