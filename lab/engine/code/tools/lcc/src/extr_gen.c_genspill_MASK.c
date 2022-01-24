#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_22__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int spills; int /*<<< orphan*/  listed; TYPE_6__* next; } ;
struct TYPE_29__ {int /*<<< orphan*/  op; TYPE_3__ x; } ;
struct TYPE_23__ {int /*<<< orphan*/  regnode; int /*<<< orphan*/  name; } ;
struct TYPE_28__ {TYPE_1__ x; int /*<<< orphan*/  name; int /*<<< orphan*/  sclass; } ;
struct TYPE_27__ {int /*<<< orphan*/  (* rmap ) (unsigned int) ;} ;
struct TYPE_25__ {int /*<<< orphan*/  size; } ;
struct TYPE_24__ {TYPE_4__ x; TYPE_2__ ptrmetric; } ;
typedef  TYPE_5__* Symbol ;
typedef  TYPE_6__* Node ;

/* Variables and functions */
 scalar_t__ ADDRL ; 
 scalar_t__ ASGN ; 
 int /*<<< orphan*/  FUNC ; 
 scalar_t__ INDIR ; 
 TYPE_22__* IR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NeedsReg ; 
 scalar_t__ P ; 
 int /*<<< orphan*/  REGISTER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_6__*) ; 
 TYPE_6__* FUNC6 (scalar_t__,TYPE_6__*,TYPE_6__*,TYPE_5__*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 

__attribute__((used)) static void FUNC14(Symbol r, Node last, Symbol tmp) {
	Node p, q;
	Symbol s;
	unsigned ty;

	FUNC2(FUNC4(stderr, "(spilling %s to local %s)\n", r->x.name, tmp->x.name));
	FUNC2(FUNC4(stderr, "(genspill: "));
	FUNC2(FUNC3(last));
	FUNC2(FUNC4(stderr, ")\n"));
	ty = FUNC8(last->op);
	FUNC0(s, FUNC);
	s->sclass = REGISTER;
	s->name = s->x.name = r->x.name;
	s->x.regnode = r->x.regnode;
	q = FUNC6(ADDRL+P + FUNC12(IR->ptrmetric.size), NULL, NULL, s);
	q = FUNC6(INDIR + ty, q, NULL, NULL);
	p = FUNC6(ADDRL+P + FUNC12(IR->ptrmetric.size), NULL, NULL, tmp);
	p = FUNC6(ASGN + ty, p, q, NULL);
	p->x.spills = 1;
	FUNC11(p);
	FUNC9(p, &q);
	q = last->x.next;
	FUNC5(p, q);
	for (p = last->x.next; p != q; p = p->x.next) {
		FUNC10(p);
		FUNC1(!p->x.listed || !NeedsReg[FUNC7(p->op)] || !(*IR->x.rmap)(FUNC8(p->op)));
	}
}