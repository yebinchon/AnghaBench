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
struct ref_sorting {int dummy; } ;
struct ref_array {int /*<<< orphan*/  nr; int /*<<< orphan*/  items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ref_sorting*) ; 
 int /*<<< orphan*/  compare_refs ; 

void FUNC1(struct ref_sorting *sorting, struct ref_array *array)
{
	FUNC0(array->items, array->nr, compare_refs, sorting);
}