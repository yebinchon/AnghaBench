#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct shallow_info {int nr_theirs; int* theirs; TYPE_1__* shallow; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {struct object_id* oid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  trace_shallow ; 

void FUNC2(struct shallow_info *info)
{
	struct object_id *oid = info->shallow->oid;
	int i, dst;
	FUNC1(&trace_shallow, "shallow: remove_nonexistent_theirs_shallow\n");
	for (i = dst = 0; i < info->nr_theirs; i++) {
		if (i != dst)
			info->theirs[dst] = info->theirs[i];
		if (FUNC0(oid + info->theirs[i]))
			dst++;
	}
	info->nr_theirs = dst;
}