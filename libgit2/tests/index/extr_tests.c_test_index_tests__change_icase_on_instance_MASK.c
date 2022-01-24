#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_12__ {int /*<<< orphan*/  entries; int /*<<< orphan*/  ignore_case; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 unsigned int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 int /*<<< orphan*/  TEST_INDEX_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	git_index *index;
	unsigned int caps;
	const git_index_entry *e;

	FUNC4(FUNC8(&index, TEST_INDEX_PATH));
	FUNC4(FUNC10(&index->entries));

	caps = FUNC5(index);
	FUNC4(FUNC9(index, caps &= ~GIT_INDEX_CAPABILITY_IGNORE_CASE));
	FUNC1(false, index->ignore_case);
	FUNC4(FUNC10(&index->entries));
	FUNC0(e = FUNC7(index, "src/common.h", 0));
	FUNC2(NULL, e = FUNC7(index, "SRC/Common.h", 0));
	FUNC0(e = FUNC7(index, "COPYING", 0));
	FUNC2(NULL, e = FUNC7(index, "copying", 0));

	FUNC4(FUNC9(index, caps | GIT_INDEX_CAPABILITY_IGNORE_CASE));
	FUNC1(true, index->ignore_case);
	FUNC4(FUNC10(&index->entries));
	FUNC0(e = FUNC7(index, "COPYING", 0));
	FUNC3("COPYING", e->path);
	FUNC0(e = FUNC7(index, "copying", 0));
	FUNC3("COPYING", e->path);

	FUNC6(index);
}