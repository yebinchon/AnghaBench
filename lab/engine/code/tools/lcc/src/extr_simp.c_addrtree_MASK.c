#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_20__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* Type ;
typedef  TYPE_5__* Tree ;
struct TYPE_21__ {long offset; TYPE_6__* base; TYPE_6__* sym; } ;
struct TYPE_23__ {TYPE_1__ addr; } ;
struct TYPE_28__ {TYPE_2__ u; } ;
struct TYPE_27__ {scalar_t__ scope; scalar_t__ sclass; int computed; int defined; int ref; int /*<<< orphan*/  addressed; int /*<<< orphan*/  generated; int /*<<< orphan*/  temporary; TYPE_4__* type; int /*<<< orphan*/  name; } ;
struct TYPE_24__ {TYPE_6__* sym; } ;
struct TYPE_26__ {TYPE_3__ u; int /*<<< orphan*/  op; } ;
struct TYPE_25__ {struct TYPE_25__* type; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* address ) (TYPE_6__*,TYPE_6__*,long) ;} ;
typedef  TYPE_6__* Symbol ;
typedef  TYPE_7__* Code ;

/* Variables and functions */
 scalar_t__ AUTO ; 
 int /*<<< orphan*/  Address ; 
 scalar_t__ EXTERN ; 
 int /*<<< orphan*/  FUNC ; 
 scalar_t__ GLOBAL ; 
 TYPE_20__* IR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERM ; 
 scalar_t__ STATIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_6__*,long) ; 
 TYPE_5__* FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Tree FUNC10(Tree e, long n, Type ty) {
	Symbol p = e->u.sym, q;

	if (p->scope  == GLOBAL
	||  p->sclass == STATIC || p->sclass == EXTERN)
		FUNC0(q, PERM);
	else
		FUNC0(q, FUNC);
	q->name = FUNC7(FUNC4(1));
	q->sclass = p->sclass;
	q->scope = p->scope;
	FUNC2(FUNC6(ty) || FUNC5(ty));
	q->type = FUNC6(ty) ? ty->type : ty;
	q->temporary = p->temporary;
	q->generated = p->generated;
	q->addressed = p->addressed;
	q->computed = 1;
	q->defined = 1;
	q->ref = 1;
	if (p->scope  == GLOBAL
	||  p->sclass == STATIC || p->sclass == EXTERN) {
		if (p->sclass == AUTO)
			q->sclass = STATIC;
		(*IR->address)(q, p, n);
	} else {
		Code cp;
		FUNC1(p);
		cp = FUNC3(Address);
		cp->u.addr.sym = q;
		cp->u.addr.base = p;
		cp->u.addr.offset = n;
	}
	e = FUNC9(e->op, ty, NULL, NULL);
	e->u.sym = q;
	return e;
}