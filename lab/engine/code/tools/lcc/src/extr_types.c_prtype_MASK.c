#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_8__* Type ;
struct TYPE_19__ {int /*<<< orphan*/  value; } ;
struct TYPE_23__ {TYPE_5__ u; int /*<<< orphan*/  name; } ;
struct TYPE_20__ {TYPE_8__** proto; } ;
struct TYPE_21__ {TYPE_6__ f; TYPE_3__* sym; } ;
struct TYPE_18__ {unsigned int marked; } ;
struct TYPE_22__ {int op; TYPE_7__ u; struct TYPE_22__* type; int /*<<< orphan*/  align; int /*<<< orphan*/  size; TYPE_4__ x; } ;
struct TYPE_15__ {TYPE_10__* flist; } ;
struct TYPE_16__ {TYPE_9__** idlist; TYPE_1__ s; } ;
struct TYPE_17__ {TYPE_2__ u; int /*<<< orphan*/  name; } ;
struct TYPE_14__ {int /*<<< orphan*/  lsb; int /*<<< orphan*/  offset; int /*<<< orphan*/  name; TYPE_8__* type; struct TYPE_14__* link; } ;
typedef  TYPE_9__* Symbol ;
typedef  TYPE_10__* Field ;
typedef  int /*<<< orphan*/  FILE ;

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
 scalar_t__ FUNC0 (TYPE_10__*) ; 
 scalar_t__ FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC3(Type ty, FILE *f, int indent, unsigned mark) {
	switch (ty->op) {
	default:
		FUNC2(f, "(%d %d %d [%p])", ty->op, ty->size, ty->align, ty->u.sym);
		break;
	case FLOAT: case INT: case UNSIGNED: case VOID:
		FUNC2(f, "(%k %d %d [\"%s\"])", ty->op, ty->size, ty->align, ty->u.sym->name);
		break;
	case CONST+VOLATILE: case CONST: case VOLATILE: case POINTER: case ARRAY:
		FUNC2(f, "(%k %d %d ", ty->op, ty->size, ty->align);
		FUNC3(ty->type, f, indent+1, mark);
		FUNC2(f, ")");
		break;
	case STRUCT: case UNION:
		FUNC2(f, "(%k %d %d [\"%s\"]", ty->op, ty->size, ty->align, ty->u.sym->name);
		if (ty->x.marked != mark) {
			Field p;
			ty->x.marked = mark;
			for (p = ty->u.sym->u.s.flist; p; p = p->link) {
				FUNC2(f, "\n%I", indent+1);
				FUNC3(p->type, f, indent+1, mark);
				FUNC2(f, " %s@%d", p->name, p->offset);
				if (p->lsb)
					FUNC2(f, ":%d..%d",
						FUNC1(p) + FUNC0(p), FUNC0(p));
			}
			FUNC2(f, "\n%I", indent);
		}
		FUNC2(f, ")");
		break;
	case ENUM:
		FUNC2(f, "(%k %d %d [\"%s\"]", ty->op, ty->size, ty->align, ty->u.sym->name);
		if (ty->x.marked != mark) {
			int i;
			Symbol *p = ty->u.sym->u.idlist;
			ty->x.marked = mark;
			for (i = 0; p[i] != NULL; i++)
				FUNC2(f, "%I%s=%d\n", indent+1, p[i]->name, p[i]->u.value);
		}
		FUNC2(f, ")");
		break;
	case FUNCTION:
		FUNC2(f, "(%k %d %d ", ty->op, ty->size, ty->align);
		FUNC3(ty->type, f, indent+1, mark);
		if (ty->u.f.proto) {
			int i;
			FUNC2(f, "\n%I{", indent+1);
			for (i = 0; ty->u.f.proto[i]; i++) {
				if (i > 0)
					FUNC2(f, "%I", indent+2);
				FUNC3(ty->u.f.proto[i], f, indent+2, mark);
				FUNC2(f, "\n");
			}
			FUNC2(f, "%I}", indent+1);
		}
		FUNC2(f, ")");
		break;
	}
}