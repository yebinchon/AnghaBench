#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* Tree ;
struct TYPE_11__ {TYPE_4__* loc; } ;
struct TYPE_12__ {TYPE_1__ c; } ;
struct TYPE_14__ {int /*<<< orphan*/  type; TYPE_2__ u; } ;
struct TYPE_13__ {struct TYPE_13__** kids; } ;
typedef  TYPE_4__* Symbol ;

/* Variables and functions */
 scalar_t__ ARG ; 
 scalar_t__ P ; 
 TYPE_3__* args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  charptype ; 
 int /*<<< orphan*/  fmt ; 
 scalar_t__* fmtend ; 
 scalar_t__* fp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Symbol printer) {
	Tree *ap;
	Symbol p;

	*fp = 0;
	p = FUNC3(FUNC5(fmt));
	for (ap = &args; *ap; ap = &(*ap)->kids[1])
		;
	*ap = FUNC6(ARG+P, charptype, FUNC4(FUNC2(p->u.c.loc)), 0);
	FUNC7(FUNC0(FUNC4(FUNC2(printer)), FUNC1(printer->type), args, NULL), 0, 0);
	args = 0;
	fp = fmtend = 0;
}