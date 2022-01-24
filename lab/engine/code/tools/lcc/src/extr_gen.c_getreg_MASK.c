#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* regnode; } ;
struct TYPE_12__ {TYPE_2__ x; } ;
struct TYPE_10__ {int /*<<< orphan*/ * vbl; int /*<<< orphan*/  set; int /*<<< orphan*/  mask; } ;
typedef  TYPE_3__* Symbol ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Symbol FUNC4(Symbol s, unsigned mask[], Node p) {
	Symbol r = FUNC0(s, mask);
	if (r == NULL) {
		r = FUNC3(s, mask, p);
		FUNC1(r && r->x.regnode);
		FUNC2(r->x.regnode->mask, r->x.regnode->set, p);
		r = FUNC0(s, mask);
	}
	FUNC1(r && r->x.regnode);
	r->x.regnode->vbl = NULL;
	return r;
}