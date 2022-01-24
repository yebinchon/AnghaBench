#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* name; TYPE_1__* regnode; } ;
struct TYPE_11__ {scalar_t__ sclass; int /*<<< orphan*/  name; TYPE_2__ x; scalar_t__ temporary; int /*<<< orphan*/  type; } ;
struct TYPE_9__ {TYPE_3__* vbl; } ;
typedef  TYPE_3__* Symbol ;

/* Variables and functions */
 void* AUTO ; 
 scalar_t__ REGISTER ; 
 TYPE_3__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmask ; 

int FUNC5(Symbol p, Symbol regs) {
	Symbol r;

	FUNC1(p);
	if (p->sclass != REGISTER)
		return 0;
	else if (!FUNC4(p->type)) {
		p->sclass = AUTO;
		return 0;
	}
	else if (p->temporary) {
		p->x.name = "?";
		return 1;
	}
	else if ((r = FUNC0(regs, vmask)) != NULL) {
		p->x.regnode = r->x.regnode;
		p->x.regnode->vbl = p;
		p->x.name = r->x.name;
		FUNC2(FUNC3("(allocating %s to symbol %s)\n", p->x.name, p->name));
		return 1;
	}
	else {
		p->sclass = AUTO;
		return 0;
	}
}