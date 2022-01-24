#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_filter_list ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_LEN ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILTER_TO_ODB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flipped ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ input ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	git_filter_list *fl;
	git_buf in = GIT_BUF_INIT, out = GIT_BUF_INIT;

	FUNC1(FUNC6(
		&fl, g_repo, NULL, "hero-flip-foo", GIT_FILTER_TO_ODB, 0));

	FUNC1(FUNC3(&in, (char *)input, DATA_LEN));
	FUNC1(FUNC4(&out, fl, &in));

	FUNC0(DATA_LEN, out.size);

	FUNC0(
		0, FUNC7(flipped, out.ptr, out.size));

	FUNC5(fl);
	FUNC2(&out);
	FUNC2(&in);
}