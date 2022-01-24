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
typedef  int /*<<< orphan*/  uiprivAttrList ;
struct attr {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 struct attr* FUNC0 (int /*<<< orphan*/ *,struct attr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct attr*) ; 

__attribute__((used)) static struct attr *FUNC3(uiprivAttrList *alist, struct attr *a)
{
	struct attr *next;

	next = FUNC0(alist, a);
	FUNC1(a->val);
	FUNC2(a);
	return next;
}