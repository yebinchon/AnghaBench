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
struct oid_array {int /*<<< orphan*/  nr; int /*<<< orphan*/  oid; int /*<<< orphan*/  sorted; } ;
struct object_id {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oid_array*) ; 
 int /*<<< orphan*/  sha1_access ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct oid_array *array, const struct object_id *oid)
{
	if (!array->sorted)
		FUNC0(array);
	return FUNC1(oid->hash, array->oid, array->nr, sha1_access);
}