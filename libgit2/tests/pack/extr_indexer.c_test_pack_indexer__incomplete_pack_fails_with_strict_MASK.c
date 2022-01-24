#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  indexed_objects; int /*<<< orphan*/  received_objects; int /*<<< orphan*/  total_objects; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_indexer_progress ;
struct TYPE_8__ {int verify; } ;
typedef  TYPE_2__ git_indexer_options ;
typedef  int /*<<< orphan*/  git_indexer ;

/* Variables and functions */
 TYPE_2__ GIT_INDEXER_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  incomplete_pack ; 
 int /*<<< orphan*/  incomplete_pack_len ; 

void FUNC7(void)
{
	git_indexer_options opts = GIT_INDEXER_OPTIONS_INIT;
	git_indexer *idx = 0;
	git_indexer_progress stats = { 0 };

	opts.verify = 1;

	FUNC2(FUNC6(&idx, ".", 0, NULL, &opts));
	FUNC2(FUNC3(
		idx, incomplete_pack, incomplete_pack_len, &stats));
	FUNC1(FUNC4(idx, &stats));

	FUNC0(stats.total_objects, 2);
	FUNC0(stats.received_objects, 2);
	FUNC0(stats.indexed_objects, 2);

	FUNC5(idx);
}