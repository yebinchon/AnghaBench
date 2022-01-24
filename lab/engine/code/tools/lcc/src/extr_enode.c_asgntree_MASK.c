#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_51__   TYPE_9__ ;
typedef  struct TYPE_50__   TYPE_8__ ;
typedef  struct TYPE_49__   TYPE_7__ ;
typedef  struct TYPE_48__   TYPE_6__ ;
typedef  struct TYPE_47__   TYPE_5__ ;
typedef  struct TYPE_46__   TYPE_4__ ;
typedef  struct TYPE_45__   TYPE_3__ ;
typedef  struct TYPE_44__   TYPE_2__ ;
typedef  struct TYPE_43__   TYPE_28__ ;
typedef  struct TYPE_42__   TYPE_27__ ;
typedef  struct TYPE_41__   TYPE_24__ ;
typedef  struct TYPE_40__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ Type ;
typedef  TYPE_8__* Tree ;
struct TYPE_46__ {TYPE_3__* sym; } ;
struct TYPE_51__ {scalar_t__ type; TYPE_4__ u; } ;
struct TYPE_47__ {long i; } ;
struct TYPE_49__ {TYPE_27__* sym; TYPE_28__* field; TYPE_5__ v; } ;
struct TYPE_50__ {scalar_t__ type; scalar_t__ op; TYPE_7__ u; TYPE_6__** kids; } ;
struct TYPE_48__ {TYPE_8__** kids; } ;
struct TYPE_40__ {scalar_t__ cfields; } ;
struct TYPE_44__ {TYPE_1__ s; } ;
struct TYPE_45__ {TYPE_2__ u; } ;
struct TYPE_43__ {TYPE_24__* type; } ;
struct TYPE_42__ {int /*<<< orphan*/  name; int /*<<< orphan*/  generated; int /*<<< orphan*/  computed; } ;
struct TYPE_41__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASGN ; 
 scalar_t__ B ; 
 int /*<<< orphan*/  BAND ; 
 scalar_t__ CALL ; 
 scalar_t__ CNST ; 
 scalar_t__ FIELD ; 
 scalar_t__ I ; 
 int /*<<< orphan*/  LSH ; 
 scalar_t__ RIGHT ; 
 int /*<<< orphan*/  RSH ; 
 scalar_t__ FUNC0 (scalar_t__,TYPE_8__*) ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ ,TYPE_8__*,TYPE_8__*) ; 
 TYPE_8__* FUNC2 (TYPE_8__*,scalar_t__) ; 
 TYPE_8__* FUNC3 (scalar_t__,long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (TYPE_28__*) ; 
 unsigned long FUNC6 (TYPE_28__*) ; 
 TYPE_8__* FUNC7 (TYPE_27__*) ; 
 scalar_t__ inttype ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_8__*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_24__*) ; 
 TYPE_8__* FUNC14 (TYPE_8__*) ; 
 scalar_t__ FUNC15 (int,scalar_t__) ; 
 TYPE_8__* FUNC16 (TYPE_8__*) ; 
 TYPE_8__* FUNC17 (TYPE_8__*,scalar_t__) ; 
 TYPE_8__* FUNC18 (int /*<<< orphan*/ ,TYPE_8__*,TYPE_8__*) ; 
 TYPE_8__* FUNC19 (scalar_t__,scalar_t__,TYPE_8__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,TYPE_8__*,TYPE_8__*) ; 
 TYPE_9__* FUNC21 (scalar_t__) ; 
 scalar_t__ voidtype ; 

Tree FUNC22(int op, Tree l, Tree r) {
	Type aty, ty;

	r = FUNC16(r);
	ty = FUNC0(l->type, r);
	if (ty)
		r = FUNC2(r, ty);
	else {
		FUNC20(ASGN, l, r);
		if (r->type == voidtype)
			r = FUNC17(r, inttype);
		ty = r->type;
	}
	if (l->op != FIELD)
		l = FUNC14(l);
	aty = l->type;
	if (FUNC11(aty))
		aty = FUNC21(aty)->type;
	if ( FUNC10(aty)
	||  (FUNC12(aty) && FUNC21(aty)->u.sym->u.s.cfields)) {
		if (FUNC8(l->op)
		&& !l->u.sym->computed && !l->u.sym->generated)
			FUNC4("assignment to const identifier `%s'\n",
				l->u.sym->name);
		else
			FUNC4("assignment to const location\n");
	}
	if (l->op == FIELD) {
		long n = 8*l->u.field->type->size - FUNC6(l->u.field);
		if (n > 0 && FUNC13(l->u.field->type))
			r = FUNC1(BAND, r,
				FUNC3(r->type, (unsigned long)FUNC5(l->u.field)));
		else if (n > 0) {
			if (r->op == CNST+I) {
				n = r->u.v.i;
				if (n&(1<<(FUNC6(l->u.field)-1)))
					n |= ~0UL<<FUNC6(l->u.field);
				r = FUNC3(r->type, n);
			} else
				r = FUNC18(RSH,
					FUNC18(LSH, r, FUNC3(inttype, n)),
					FUNC3(inttype, n));
		}
	}
	if (FUNC12(ty) && FUNC8(l->op) && FUNC9(r))
		return FUNC19(RIGHT, ty,
			FUNC19(CALL+B, ty, r->kids[0]->kids[0], l),
			FUNC7(l->u.sym));
	return FUNC19(FUNC15(op,ty), ty, l, r);
}