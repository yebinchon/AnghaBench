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
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
	git_index *index;
	git_diff *diff;
	git_buf path = GIT_BUF_INIT;

	FUNC2(FUNC4(&path, FUNC12(g_repo), "A"));
	FUNC1(path.ptr, "A");

	/* Put 'A' into the index */
	FUNC2(FUNC11(&index, g_repo));
	FUNC2(FUNC8(index, "A"));
	FUNC2(FUNC10(index));

	FUNC2(FUNC6(&diff, g_repo, index, NULL));
	FUNC0(0, FUNC7(diff));
	FUNC5(diff);

	/* Change its contents quickly, so we get the same timestamp */
	FUNC1(path.ptr, "B");

	FUNC2(FUNC6(&diff, g_repo, index, NULL));
	FUNC0(1, FUNC7(diff));

	FUNC9(index);
	FUNC5(diff);
	FUNC3(&path);
}