#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  val; } ;
struct symbol {int type; TYPE_4__ curr; } ;
struct property {TYPE_3__* expr; } ;
struct TYPE_6__ {int /*<<< orphan*/  sym; } ;
struct TYPE_5__ {int /*<<< orphan*/  sym; } ;
struct TYPE_7__ {TYPE_2__ right; TYPE_1__ left; } ;

/* Variables and functions */
#define  S_HEX 129 
#define  S_INT 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,long long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct property* FUNC3 (struct symbol*) ; 
 long long FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct symbol *sym)
{
	struct property *prop;
	int base;
	long long val, val2;
	char str[64];

	switch (sym->type) {
	case S_INT:
		base = 10;
		break;
	case S_HEX:
		base = 16;
		break;
	default:
		return;
	}
	prop = FUNC3(sym);
	if (!prop)
		return;
	val = FUNC2(sym->curr.val, NULL, base);
	val2 = FUNC4(prop->expr->left.sym, base);
	if (val >= val2) {
		val2 = FUNC4(prop->expr->right.sym, base);
		if (val <= val2)
			return;
	}
	if (sym->type == S_INT)
		FUNC0(str, "%lld", val2);
	else
		FUNC0(str, "0x%llx", val2);
	sym->curr.val = FUNC1(str);
}