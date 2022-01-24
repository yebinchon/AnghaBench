#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ inst; TYPE_4__** kids; } ;
struct TYPE_11__ {TYPE_3__ x; struct TYPE_11__** kids; TYPE_2__** syms; } ;
struct TYPE_8__ {int usecount; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; TYPE_1__ x; scalar_t__ temporary; } ;
typedef  TYPE_4__* Node ;

/* Variables and functions */
 size_t RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static Node *FUNC2(Node p, Node pp[]) {
	if (p == NULL)
		return pp;
	p->x.kids[0] = p->x.kids[1] = p->x.kids[2] = NULL;
	if (p->x.inst == 0)
		return FUNC2(p->kids[1], FUNC2(p->kids[0], pp));
	else if (p->syms[RX] && p->syms[RX]->temporary
	&& p->syms[RX]->x.usecount < 2) {
		p->x.inst = 0;
		FUNC0(FUNC1(stderr, "(clobbering %s)\n", p->syms[RX]->name));
		return FUNC2(p->kids[1], FUNC2(p->kids[0], pp));
	}
	else {
		FUNC2(p->kids[1], FUNC2(p->kids[0], &p->x.kids[0]));
		*pp = p;
		return pp + 1;
	}
}