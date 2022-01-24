#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* Type ;
struct TYPE_16__ {int /*<<< orphan*/  oldstyle; int /*<<< orphan*/  proto; } ;
struct TYPE_17__ {TYPE_1__ f; } ;
struct TYPE_18__ {int op; int size; TYPE_2__ u; struct TYPE_18__* type; } ;
typedef  int /*<<< orphan*/  Symbol ;

/* Variables and functions */
#define  ARRAY 132 
 int Aflag ; 
#define  CONST 131 
#define  FUNCTION 130 
#define  POINTER 129 
#define  VOLATILE 128 
 TYPE_3__* FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (char**,int /*<<< orphan*/ **,int) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_3__*) ; 

__attribute__((used)) static Type FUNC7(Type basety, char **id, Symbol **params, int abstract) {
	Type ty = FUNC2(id, params, abstract);

	for ( ; ty; ty = ty->type)
		switch (ty->op) {
		case POINTER:
			basety = FUNC4(basety);
			break;
		case FUNCTION:
			basety = FUNC3(basety, ty->u.f.proto,
				ty->u.f.oldstyle);
			break;
		case ARRAY:
			basety = FUNC0(basety, ty->size, 0);
			break;
		case CONST: case VOLATILE:
			basety = FUNC5(ty->op, basety);
			break;
		default: FUNC1(0);
		}
	if (Aflag >= 2 && basety->size > 32767)
		FUNC6("more than 32767 bytes in `%t'\n", basety);
	return basety;
}