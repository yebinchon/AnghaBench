#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct oidset {int /*<<< orphan*/  set; } ;
struct object_id {int dummy; } ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct object_id const) ; 

int FUNC3(struct oidset *set, const struct object_id *oid)
{
	khiter_t pos = FUNC2(&set->set, *oid);
	if (pos == FUNC1(&set->set))
		return 0;
	FUNC0(&set->set, pos);
	return 1;
}