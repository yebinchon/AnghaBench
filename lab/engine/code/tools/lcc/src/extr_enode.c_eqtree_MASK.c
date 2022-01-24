#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Type ;
typedef  TYPE_2__* Tree ;
struct TYPE_21__ {TYPE_1__* type; } ;
struct TYPE_20__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  inttype ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* unsignedptr ; 

Tree FUNC10(int op, Tree l, Tree r) {
	Type xty = l->type, yty = r->type;

	if ((FUNC5(xty) && FUNC4(r))
	||  (FUNC5(xty) && !FUNC3(xty->type) && FUNC6(yty))
	||  (FUNC5(xty) && FUNC5(yty)
	    && FUNC2(FUNC9(xty->type), FUNC9(yty->type), 1))) {
		Type ty = unsignedptr;
		l = FUNC0(l, ty);
		r = FUNC0(r, ty);
		return FUNC8(FUNC7(op,ty), inttype, l, r);
	}
	if ((FUNC5(yty) && FUNC4(l))
	||  (FUNC5(yty) && !FUNC3(yty->type) && FUNC6(xty)))
		return FUNC10(op, r, l);
	return FUNC1(op, l, r);
}