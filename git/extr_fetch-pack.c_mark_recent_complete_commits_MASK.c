#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ timestamp_t ;
struct fetch_pack_args {int dummy; } ;
struct TYPE_7__ {TYPE_2__* item; } ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {scalar_t__ date; TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fetch_pack_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fetch_pack_args *args,
					 timestamp_t cutoff)
{
	while (complete && cutoff <= complete->item->date) {
		FUNC3(args, FUNC0("Marking %s as complete"),
			      FUNC1(&complete->item->object.oid));
		FUNC2(&complete, COMPLETE);
	}
}