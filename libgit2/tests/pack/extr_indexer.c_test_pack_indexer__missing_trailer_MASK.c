#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_indexer_progress ;
typedef  int /*<<< orphan*/  git_indexer ;
struct TYPE_6__ {int /*<<< orphan*/  klass; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_INDEXER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  missing_trailer_pack ; 
 int /*<<< orphan*/  missing_trailer_pack_len ; 

void FUNC9(void)
{
	git_indexer *idx = 0;
	git_indexer_progress stats = { 0 };

	FUNC3(FUNC8(&idx, ".", 0, NULL, NULL));
	FUNC3(FUNC5(
		idx, missing_trailer_pack, missing_trailer_pack_len, &stats));
	FUNC2(FUNC6(idx, &stats));

	FUNC0(FUNC4() != NULL);
	FUNC1(FUNC4()->klass, GIT_ERROR_INDEXER);

	FUNC7(idx);
}