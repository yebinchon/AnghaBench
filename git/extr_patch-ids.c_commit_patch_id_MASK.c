#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_4__ object; TYPE_3__* parents; } ;
struct TYPE_7__ {TYPE_2__* item; } ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {TYPE_1__ object; } ;

/* Variables and functions */
 int FUNC0 (struct diff_options*,struct object_id*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC4 (struct commit*) ; 

int FUNC5(struct commit *commit, struct diff_options *options,
		    struct object_id *oid, int diff_header_only, int stable)
{
	if (!FUNC4(commit))
		return -1;

	if (commit->parents)
		FUNC2(&commit->parents->item->object.oid,
			      &commit->object.oid, "", options);
	else
		FUNC1(&commit->object.oid, "", options);
	FUNC3(options);
	return FUNC0(options, oid, diff_header_only, stable);
}