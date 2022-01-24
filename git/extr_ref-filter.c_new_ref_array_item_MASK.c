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
struct ref_array_item {int /*<<< orphan*/  objectname; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref_array_item*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id const*) ; 

__attribute__((used)) static struct ref_array_item *FUNC2(const char *refname,
						 const struct object_id *oid)
{
	struct ref_array_item *ref;

	FUNC0(ref, refname, refname);
	FUNC1(&ref->objectname, oid);

	return ref;
}