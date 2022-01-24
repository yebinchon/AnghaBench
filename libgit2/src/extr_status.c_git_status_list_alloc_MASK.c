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
struct TYPE_7__ {int /*<<< orphan*/  paired; } ;
typedef  TYPE_1__ git_status_list ;
struct TYPE_8__ {scalar_t__ ignore_case; } ;
typedef  TYPE_2__ git_index ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int (*) (void const*,void const*)) ; 
 int FUNC3 (void const*,void const*) ; 
 int FUNC4 (void const*,void const*) ; 

__attribute__((used)) static git_status_list *FUNC5(git_index *index)
{
	git_status_list *status = NULL;
	int (*entrycmp)(const void *a, const void *b);

	if (!(status = FUNC0(1, sizeof(git_status_list))))
		return NULL;

	entrycmp = index->ignore_case ? status_entry_icmp : status_entry_cmp;

	if (FUNC2(&status->paired, 0, entrycmp) < 0) {
		FUNC1(status);
		return NULL;
	}

	return status;
}