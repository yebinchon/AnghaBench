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
struct oid_array {scalar_t__ sorted; scalar_t__ nr; int /*<<< orphan*/ * oid; int /*<<< orphan*/  alloc; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct object_id const*) ; 

void FUNC2(struct oid_array *array, const struct object_id *oid)
{
	FUNC0(array->oid, array->nr + 1, array->alloc);
	FUNC1(&array->oid[array->nr++], oid);
	array->sorted = 0;
}