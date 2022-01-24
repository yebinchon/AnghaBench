#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Type ;
typedef  TYPE_2__* Tree ;
struct TYPE_40__ {int /*<<< orphan*/  type; } ;
struct TYPE_39__ {TYPE_5__* type; } ;
struct TYPE_38__ {long size; TYPE_5__* type; } ;

/* Variables and functions */
 int DIV ; 
 int I ; 
 int /*<<< orphan*/  MUL ; 
 int P ; 
 int SUB ; 
 int U ; 
 TYPE_1__* FUNC0 (TYPE_5__*,TYPE_5__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,long) ; 
 scalar_t__ FUNC3 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_5__*) ; 
 TYPE_1__* inttype ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 TYPE_1__* longtype ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 TYPE_1__* FUNC11 (TYPE_5__*) ; 
 TYPE_1__* signedptr ; 
 TYPE_2__* FUNC12 (int,TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int,TYPE_2__*,TYPE_2__*) ; 
 TYPE_1__* FUNC14 (TYPE_5__*) ; 
 TYPE_1__* unsignedptr ; 

__attribute__((used)) static Tree FUNC15(int op, Tree l, Tree r) {
	long n;
	Type ty = inttype;

	if (FUNC5(l->type) && FUNC5(r->type)) {
		ty = FUNC0(l->type, r->type);
		l = FUNC1(l, ty);
		r = FUNC1(r, ty);		
	} else if (FUNC8(l->type) && !FUNC6(l->type->type) && FUNC7(r->type)) {
		ty = FUNC14(l->type);
		n = FUNC14(ty->type)->size;
		if (n == 0)
			FUNC4("unknown size for type `%t'\n", ty->type);
		r = FUNC1(r, FUNC11(r->type));
		if (n > 1)
			r = FUNC10(MUL, FUNC2(signedptr, n), r);
		if (FUNC9(r->type))
			r = FUNC1(r, unsignedptr);
		else
			r = FUNC1(r, signedptr);
		return FUNC12(SUB+P, ty, l, r);
	} else if (FUNC3(l->type, r->type)) {
		ty = FUNC14(l->type);
		n = FUNC14(ty->type)->size;
		if (n == 0)
			FUNC4("unknown size for type `%t'\n", ty->type);
		l = FUNC12(SUB+U, unsignedptr,
			FUNC1(l, unsignedptr), FUNC1(r, unsignedptr));
		return FUNC12(DIV+I, longtype,
			FUNC1(l, longtype), FUNC2(longtype, n));
	} else
		FUNC13(op, l, r);
	return FUNC12(op, ty, l, r);
}