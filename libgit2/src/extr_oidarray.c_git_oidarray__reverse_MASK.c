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
struct TYPE_3__ {int count; int /*<<< orphan*/ * ids; } ;
typedef  TYPE_1__ git_oidarray ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(git_oidarray *arr)
{
	size_t i;
	git_oid tmp;

	for (i = 0; i < arr->count / 2; i++) {
		FUNC0(&tmp, &arr->ids[i]);
		FUNC0(&arr->ids[i], &arr->ids[(arr->count-1)-i]);
		FUNC0(&arr->ids[(arr->count-1)-i], &tmp);
	}
}