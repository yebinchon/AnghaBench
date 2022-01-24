#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  entries; } ;
typedef  TYPE_1__ git_index ;

/* Variables and functions */
 unsigned int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 int /*<<< orphan*/  TEST_INDEX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_index *index;
	unsigned int caps;

	FUNC2(FUNC6(&index, TEST_INDEX_PATH));
	FUNC2(FUNC9(&index->entries));

	caps = FUNC3(index);
	FUNC2(FUNC8(index, caps &= ~GIT_INDEX_CAPABILITY_IGNORE_CASE));
	FUNC2(FUNC7(index, true));
	FUNC2(FUNC9(&index->entries));
	FUNC0(FUNC5(index, ".HEADER", 0));
	FUNC1(NULL, FUNC5(index, ".header", 0));

	FUNC2(FUNC8(index, caps | GIT_INDEX_CAPABILITY_IGNORE_CASE));
	FUNC2(FUNC7(index, true));
	FUNC2(FUNC9(&index->entries));
	FUNC0(FUNC5(index, ".HEADER", 0));
	FUNC0(FUNC5(index, ".header", 0));

	FUNC4(index);
}