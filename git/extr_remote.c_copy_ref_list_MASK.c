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
 struct ref* FUNC0 (struct ref const*) ; 

struct ref *FUNC1(const struct ref *ref)
{
	struct ref *ret = NULL;
	struct ref **tail = &ret;
	while (ref) {
		*tail = FUNC0(ref);
		ref = ref->next;
		tail = &((*tail)->next);
	}
	return ret;
}