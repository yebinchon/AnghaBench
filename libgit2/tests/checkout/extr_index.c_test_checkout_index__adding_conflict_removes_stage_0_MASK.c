#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	git_index *new_index, *index;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

	FUNC2(FUNC6(&new_index));

	FUNC0(new_index, "new.txt");
	FUNC2(FUNC3(g_repo, new_index, &opts));

	FUNC2(FUNC7(&index, g_repo));

	FUNC1(FUNC5(index, "new.txt", 0) == NULL);
	FUNC1(FUNC5(index, "new.txt", 1) != NULL);
	FUNC1(FUNC5(index, "new.txt", 2) != NULL);
	FUNC1(FUNC5(index, "new.txt", 3) != NULL);

	FUNC4(index);
	FUNC4(new_index);
}