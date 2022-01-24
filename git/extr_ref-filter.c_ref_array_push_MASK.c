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
struct ref_array_item {int dummy; } ;
struct ref_array {scalar_t__ nr; struct ref_array_item** items; int /*<<< orphan*/  alloc; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_array_item**,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ref_array_item* FUNC1 (char const*,struct object_id const*) ; 

struct ref_array_item *FUNC2(struct ref_array *array,
				      const char *refname,
				      const struct object_id *oid)
{
	struct ref_array_item *ref = FUNC1(refname, oid);

	FUNC0(array->items, array->nr + 1, array->alloc);
	array->items[array->nr++] = ref;

	return ref;
}