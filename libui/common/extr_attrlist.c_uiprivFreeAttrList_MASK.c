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
struct attr {int /*<<< orphan*/  val; struct attr* next; struct attr* first; } ;
typedef  struct attr uiprivAttrList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct attr*) ; 

void FUNC2(uiprivAttrList *alist)
{
	struct attr *a, *next;

	a = alist->first;
	while (a != NULL) {
		next = a->next;
		FUNC0(a->val);
		FUNC1(a);
		a = next;
	}
	FUNC1(alist);
}