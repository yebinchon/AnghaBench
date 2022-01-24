#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ value; } ;
struct ref_entry {int flag; TYPE_2__ u; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_entry*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id const*) ; 

struct ref_entry *FUNC2(const char *refname,
				   const struct object_id *oid, int flag)
{
	struct ref_entry *ref;

	FUNC0(ref, name, refname);
	FUNC1(&ref->u.value.oid, oid);
	ref->flag = flag;
	return ref;
}