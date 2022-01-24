#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
struct TYPE_6__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  automergeable_id ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 
 TYPE_2__ test_driver_defer_apply ; 

void FUNC8(void)
{
	const git_index_entry *idx;

	FUNC2(FUNC5("defer",
		&test_driver_defer_apply.base));

	FUNC3(repo, "merge.default", "defer");
	FUNC7();

	FUNC0((idx = FUNC4(repo_index, "automergeable.txt", 0)));
	FUNC1(&automergeable_id, &idx->id);

	FUNC6("defer");
}