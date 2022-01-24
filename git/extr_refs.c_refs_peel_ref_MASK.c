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
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {char const* refname; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESOLVE_REF_READING ; 
 TYPE_1__* current_ref_iter ; 
 int /*<<< orphan*/  FUNC0 (struct object_id*,struct object_id*) ; 
 int FUNC1 (struct object_id*,struct object_id*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct object_id*) ; 
 scalar_t__ FUNC3 (struct ref_store*,char const*,int /*<<< orphan*/ ,struct object_id*,int*) ; 

int FUNC4(struct ref_store *refs, const char *refname,
		  struct object_id *oid)
{
	int flag;
	struct object_id base;

	if (current_ref_iter && current_ref_iter->refname == refname) {
		struct object_id peeled;

		if (FUNC2(current_ref_iter, &peeled))
			return -1;
		FUNC0(oid, &peeled);
		return 0;
	}

	if (FUNC3(refs, refname,
			       RESOLVE_REF_READING, &base, &flag))
		return -1;

	return FUNC1(&base, oid);
}