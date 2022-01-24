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
struct ref {struct ref* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref*) ; 

void FUNC1(struct ref *ref)
{
	struct ref *next;
	while (ref) {
		next = ref->next;
		FUNC0(ref);
		ref = next;
	}
}