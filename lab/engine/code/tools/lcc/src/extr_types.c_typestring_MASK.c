#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  TYPE_3__* Type ;
struct TYPE_18__ {char* name; } ;
struct TYPE_15__ {TYPE_3__** proto; } ;
struct TYPE_16__ {TYPE_1__ f; TYPE_13__* sym; } ;
struct TYPE_17__ {int op; int size; struct TYPE_17__* type; TYPE_2__ u; } ;
struct TYPE_14__ {char* name; } ;
typedef  TYPE_4__* Symbol ;

/* Variables and functions */
#define  ARRAY 139 
#define  CONST 138 
#define  ENUM 137 
#define  FLOAT 136 
#define  FUNCTION 135 
#define  INT 134 
#define  POINTER 133 
#define  STRUCT 132 
#define  UNION 131 
#define  UNSIGNED 130 
#define  VOID 129 
#define  VOLATILE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_13__*) ; 
 TYPE_4__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 char* FUNC6 (char*,...) ; 
 TYPE_3__* voidtype ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

char *FUNC8(Type ty, char *str) {
	for ( ; ty; ty = ty->type) {
		Symbol p;
		switch (ty->op) {
		case CONST+VOLATILE: case CONST: case VOLATILE:
			if (FUNC5(ty->type))
				str = FUNC6("%k %s", ty->op, str);
			else
				return FUNC6("%k %s", ty->op, FUNC8(ty->type, str));
			break;
		case STRUCT: case UNION: case ENUM:
			FUNC0(ty->u.sym);
			if ((p = FUNC1(ty)) != NULL)
				return *str ? FUNC6("%s %s", p->name, str) : p->name;
			if (*ty->u.sym->name >= '1' && *ty->u.sym->name <= '9')
				FUNC7("unnamed %k in prototype\n", ty->op);
			if (*str)
				return FUNC6("%k %s %s", ty->op, ty->u.sym->name, str);
			else
				return FUNC6("%k %s", ty->op, ty->u.sym->name);
		case VOID: case FLOAT: case INT: case UNSIGNED:
			return *str ? FUNC6("%s %s", ty->u.sym->name, str) : ty->u.sym->name;
		case POINTER:
			if (!FUNC3(ty->type) && (p = FUNC1(ty)) != NULL)
				return *str ? FUNC6("%s %s", p->name, str) : p->name;
			str = FUNC6(FUNC2(ty->type) || FUNC4(ty->type) ? "(*%s)" : "*%s", str);
			break;
		case FUNCTION:
			if ((p = FUNC1(ty)) != NULL)
				return *str ? FUNC6("%s %s", p->name, str) : p->name;
			if (ty->u.f.proto == 0)
				str = FUNC6("%s()", str);
			else if (ty->u.f.proto[0]) {
				int i;
				str = FUNC6("%s(%s", str, FUNC8(ty->u.f.proto[0], ""));
				for (i = 1; ty->u.f.proto[i]; i++)
					if (ty->u.f.proto[i] == voidtype)
						str = FUNC6("%s, ...", str);
					else
						str = FUNC6("%s, %s", str, FUNC8(ty->u.f.proto[i], ""));
				str = FUNC6("%s)", str);
			} else
				str = FUNC6("%s(void)", str);
			break;
		case ARRAY:
			if ((p = FUNC1(ty)) != NULL)
				return *str ? FUNC6("%s %s", p->name, str) : p->name;
			if (ty->type && ty->type->size > 0)
				str = FUNC6("%s[%d]", str, ty->size/ty->type->size);
			else
				str = FUNC6("%s[]", str);
			break;
		default: FUNC0(0);
		}
	}
	FUNC0(0); return 0;
}