#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* Type ;
struct TYPE_9__ {scalar_t__ scope; char src; TYPE_1__* type; int /*<<< orphan*/  name; int /*<<< orphan*/  defined; } ;
struct TYPE_8__ {int op; } ;
typedef  TYPE_2__* Symbol ;

/* Variables and functions */
 scalar_t__ PARAM ; 
 int /*<<< orphan*/  PERM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* FUNC3 (char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ level ; 
 TYPE_2__* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ maxlevel ; 
 char src ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  types ; 

Type FUNC7(int op, char *tag) {
	Symbol p;

	FUNC0(tag);
	if (*tag == 0)
		tag = FUNC5(FUNC2(1));
	else
		if ((p = FUNC4(tag, types)) != NULL && (p->scope == level
		|| (p->scope == PARAM && level == PARAM+1))) {
			if (p->type->op == op && !p->defined)
				return p->type;
			FUNC1("redefinition of `%s' previously defined at %w\n",
				p->name, &p->src);
		}
	p = FUNC3(tag, &types, level, PERM);
	p->type = FUNC6(op, NULL, 0, 0, p);
	if (p->scope > maxlevel)
		maxlevel = p->scope;
	p->src = src;
	return p->type;
}