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
struct complete_reflogs {int nr; struct complete_reflogs* ref; struct complete_reflogs* items; struct complete_reflogs* message; struct complete_reflogs* email; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct complete_reflogs*) ; 

__attribute__((used)) static void FUNC1(struct complete_reflogs *array)
{
	int i;

	if (!array)
		return;

	for (i = 0; i < array->nr; i++) {
		FUNC0(array->items[i].email);
		FUNC0(array->items[i].message);
	}
	FUNC0(array->items);
	FUNC0(array->ref);
	FUNC0(array);
}