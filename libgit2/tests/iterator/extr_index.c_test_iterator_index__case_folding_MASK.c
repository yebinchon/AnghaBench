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
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ITERATOR_DONT_IGNORE_CASE ; 
 int /*<<< orphan*/  GIT_ITERATOR_IGNORE_CASE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  expected_index_ci ; 
 int /*<<< orphan*/  expected_index_cs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	git_buf path = GIT_BUF_INIT;
	int fs_is_ci = 0;

	FUNC2(FUNC5(&path, FUNC1("icase"), ".gitted/CoNfIg"));
	fs_is_ci = FUNC6(path.ptr);
	FUNC4(&path);

	FUNC7(
		"icase", NULL, NULL, 0, FUNC0(expected_index_cs),
		fs_is_ci ? expected_index_ci : expected_index_cs, NULL);

	FUNC3();

	FUNC7(
		"icase", NULL, NULL, GIT_ITERATOR_IGNORE_CASE,
		FUNC0(expected_index_ci), expected_index_ci, NULL);

	FUNC3();

	FUNC7(
		"icase", NULL, NULL, GIT_ITERATOR_DONT_IGNORE_CASE,
		FUNC0(expected_index_cs), expected_index_cs, NULL);
}