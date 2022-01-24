#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Type ;
typedef  TYPE_1__* Tree ;
struct TYPE_12__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inttype ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*,TYPE_1__*) ; 

Tree FUNC5(int op, Tree l, Tree r) {
	Type ty = inttype;

	if (FUNC2(l->type) && FUNC2(r->type)) {
 		ty = FUNC0(l->type, r->type);
		l = FUNC1(l, ty);
		r = FUNC1(r, ty);		
	} else
		FUNC4(op, l, r);
	return FUNC3(op, ty, l, r);
}