
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef TYPE_8__* Type ;
struct TYPE_19__ {int value; } ;
struct TYPE_23__ {TYPE_5__ u; int name; } ;
struct TYPE_20__ {TYPE_8__** proto; } ;
struct TYPE_21__ {TYPE_6__ f; TYPE_3__* sym; } ;
struct TYPE_18__ {unsigned int marked; } ;
struct TYPE_22__ {int op; TYPE_7__ u; struct TYPE_22__* type; int align; int size; TYPE_4__ x; } ;
struct TYPE_15__ {TYPE_10__* flist; } ;
struct TYPE_16__ {TYPE_9__** idlist; TYPE_1__ s; } ;
struct TYPE_17__ {TYPE_2__ u; int name; } ;
struct TYPE_14__ {int lsb; int offset; int name; TYPE_8__* type; struct TYPE_14__* link; } ;
typedef TYPE_9__* Symbol ;
typedef TYPE_10__* Field ;
typedef int FILE ;
 scalar_t__ fieldright (TYPE_10__*) ;
 scalar_t__ fieldsize (TYPE_10__*) ;
 int fprint (int *,char*,...) ;

__attribute__((used)) static void prtype(Type ty, FILE *f, int indent, unsigned mark) {
 switch (ty->op) {
 default:
  fprint(f, "(%d %d %d [%p])", ty->op, ty->size, ty->align, ty->u.sym);
  break;
 case 136: case 134: case 130: case 129:
  fprint(f, "(%k %d %d [\"%s\"])", ty->op, ty->size, ty->align, ty->u.sym->name);
  break;
 case 138 +128: case 138: case 128: case 133: case 139:
  fprint(f, "(%k %d %d ", ty->op, ty->size, ty->align);
  prtype(ty->type, f, indent+1, mark);
  fprint(f, ")");
  break;
 case 132: case 131:
  fprint(f, "(%k %d %d [\"%s\"]", ty->op, ty->size, ty->align, ty->u.sym->name);
  if (ty->x.marked != mark) {
   Field p;
   ty->x.marked = mark;
   for (p = ty->u.sym->u.s.flist; p; p = p->link) {
    fprint(f, "\n%I", indent+1);
    prtype(p->type, f, indent+1, mark);
    fprint(f, " %s@%d", p->name, p->offset);
    if (p->lsb)
     fprint(f, ":%d..%d",
      fieldsize(p) + fieldright(p), fieldright(p));
   }
   fprint(f, "\n%I", indent);
  }
  fprint(f, ")");
  break;
 case 137:
  fprint(f, "(%k %d %d [\"%s\"]", ty->op, ty->size, ty->align, ty->u.sym->name);
  if (ty->x.marked != mark) {
   int i;
   Symbol *p = ty->u.sym->u.idlist;
   ty->x.marked = mark;
   for (i = 0; p[i] != ((void*)0); i++)
    fprint(f, "%I%s=%d\n", indent+1, p[i]->name, p[i]->u.value);
  }
  fprint(f, ")");
  break;
 case 135:
  fprint(f, "(%k %d %d ", ty->op, ty->size, ty->align);
  prtype(ty->type, f, indent+1, mark);
  if (ty->u.f.proto) {
   int i;
   fprint(f, "\n%I{", indent+1);
   for (i = 0; ty->u.f.proto[i]; i++) {
    if (i > 0)
     fprint(f, "%I", indent+2);
    prtype(ty->u.f.proto[i], f, indent+2, mark);
    fprint(f, "\n");
   }
   fprint(f, "%I}", indent+1);
  }
  fprint(f, ")");
  break;
 }
}
