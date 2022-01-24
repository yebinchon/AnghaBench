#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_status_list ;
struct TYPE_3__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ git_status_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  entry_count0 ; 
 int /*<<< orphan*/ * entry_statuses0 ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(git_status_list *status)
{
	size_t i, max_i = FUNC3(status);
	FUNC1(entry_count0, max_i);
	for (i = 0; i < max_i; ++i) {
		const git_status_entry *entry = FUNC2(status, i);
		FUNC0(entry_statuses0[i], entry->status);
	}
}