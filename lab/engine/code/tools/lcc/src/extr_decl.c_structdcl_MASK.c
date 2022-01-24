#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* Type ;
struct TYPE_12__ {int defined; int /*<<< orphan*/  src; } ;
struct TYPE_11__ {scalar_t__ scope; TYPE_2__* type; } ;
struct TYPE_9__ {TYPE_4__* sym; } ;
struct TYPE_10__ {int op; TYPE_1__ u; } ;
typedef  TYPE_3__* Symbol ;
typedef  int /*<<< orphan*/  Coordinate ;

/* Variables and functions */
 char ID ; 
#define  IF 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 char FUNC2 () ; 
 scalar_t__ FUNC3 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ level ; 
 TYPE_3__* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int,char*) ; 
 int /*<<< orphan*/  src ; 
 char t ; 
 int /*<<< orphan*/  FUNC6 (char,char*) ; 
 char* token ; 
 int /*<<< orphan*/  tsym ; 
 int /*<<< orphan*/  types ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ xref ; 

__attribute__((used)) static Type FUNC8(int op) {
	char *tag;
	Type ty;
	Symbol p;
	Coordinate pos;

	t = FUNC2();
	pos = src;
	if (t == ID) {
		tag = token;
		t = FUNC2();
	} else
		tag = "";
	if (t == '{') {
		static char stop[] = { IF, ',', 0 };
		ty = FUNC5(op, tag);
		ty->u.sym->src = pos;
		ty->u.sym->defined = 1;
		t = FUNC2();
		if (FUNC3(t, tsym))
			FUNC1(ty);
		else
			FUNC0("invalid %k field declarations\n", op);
		FUNC6('}', stop);
	}
	else if (*tag && (p = FUNC4(tag, types)) != NULL
	&& p->type->op == op) {
		ty = p->type;
		if (t == ';' && p->scope < level)
			ty = FUNC5(op, tag);
	}
	else {
		if (*tag == 0)
			FUNC0("missing %k tag\n", op);
		ty = FUNC5(op, tag);
	}
	if (*tag && xref)
		FUNC7(ty->u.sym, pos);
	return ty;
}