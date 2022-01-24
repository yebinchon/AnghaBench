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
struct TYPE_4__ {int /*<<< orphan*/  indexed_objects; int /*<<< orphan*/  received_objects; int /*<<< orphan*/  total_objects; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_indexer_progress ;
typedef  int /*<<< orphan*/  git_indexer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  out_of_order_pack ; 
 int /*<<< orphan*/  out_of_order_pack_len ; 

void FUNC6(void)
{
	git_indexer *idx = 0;
	git_indexer_progress stats = { 0 };

	FUNC1(FUNC5(&idx, ".", 0, NULL, NULL));
	FUNC1(FUNC2(
		idx, out_of_order_pack, out_of_order_pack_len, &stats));
	FUNC1(FUNC3(idx, &stats));

	FUNC0(stats.total_objects, 3);
	FUNC0(stats.received_objects, 3);
	FUNC0(stats.indexed_objects, 3);

	FUNC4(idx);
}