#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  size; } ;
struct TYPE_12__ {TYPE_3__** callee; } ;
struct TYPE_13__ {TYPE_1__ f; } ;
struct TYPE_14__ {char* name; TYPE_4__* type; TYPE_2__ u; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* space ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__* Symbol ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO ; 
 int /*<<< orphan*/  BSS ; 
 int /*<<< orphan*/  GLOBAL ; 
 int /*<<< orphan*/  INCR ; 
 TYPE_10__* IR ; 
 int /*<<< orphan*/  STATIC ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* frameno ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inttype ; 
 int /*<<< orphan*/  level ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC12(Symbol printer, Symbol f) {
	int i;
	Symbol counter = FUNC5(STATIC, inttype, GLOBAL);

	FUNC4(counter, BSS);
	(*IR->space)(counter->type->size);
	frameno = FUNC5(AUTO, inttype, level);
	FUNC0(frameno);
	FUNC1(f->name); FUNC1("#");
	FUNC10(FUNC2(frameno, FUNC7(INCR, FUNC6(counter), FUNC3(1, inttype))), 0);
	FUNC1("(");
	for (i = 0; f->u.f.callee[i]; i++) {
		if (i)
			FUNC1(",");
		FUNC1(f->u.f.callee[i]->name); FUNC1("=");
		FUNC10(FUNC6(f->u.f.callee[i]), 0);
	}
	if (FUNC11(f->type))
		FUNC1(",...");
	FUNC1(") called\n");
	FUNC9(printer);
}