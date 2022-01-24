#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;

/* Type definitions */
typedef  TYPE_3__* Type ;
typedef  TYPE_4__* Tree ;
struct TYPE_25__ {int /*<<< orphan*/  type; } ;
struct TYPE_24__ {scalar_t__ align; scalar_t__ size; int /*<<< orphan*/  type; } ;
struct TYPE_22__ {int /*<<< orphan*/  loc; } ;
struct TYPE_23__ {TYPE_1__ c; } ;
struct TYPE_21__ {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  Symbol ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long) ; 
 scalar_t__* file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inttype ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ lineno ; 
 TYPE_17__* FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  voidptype ; 

Tree FUNC9(Type pty, Symbol f, Tree p, Tree e) {
	Type ty;

	if (FUNC3(pty))
		return FUNC6(FUNC9(FUNC0(pty), f, p, e), pty);
	ty = FUNC7(FUNC7(p->type)->type);
	return FUNC8(f, pty,
		p, e,
		FUNC1(inttype, (long)ty->size),
		FUNC1(inttype, (long)ty->align),
		(file && *file ? FUNC5(FUNC2(FUNC4(file)->u.c.loc)) : FUNC1(voidptype, NULL)), FUNC1(inttype, (long)lineno)		, NULL);
}