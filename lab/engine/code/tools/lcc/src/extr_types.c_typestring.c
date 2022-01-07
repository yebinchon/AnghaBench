
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef TYPE_3__* Type ;
struct TYPE_18__ {char* name; } ;
struct TYPE_15__ {TYPE_3__** proto; } ;
struct TYPE_16__ {TYPE_1__ f; TYPE_13__* sym; } ;
struct TYPE_17__ {int op; int size; struct TYPE_17__* type; TYPE_2__ u; } ;
struct TYPE_14__ {char* name; } ;
typedef TYPE_4__* Symbol ;
 int assert (TYPE_13__*) ;
 TYPE_4__* findtype (TYPE_3__*) ;
 int isarray (TYPE_3__*) ;
 int ischar (TYPE_3__*) ;
 int isfunc (TYPE_3__*) ;
 int isptr (TYPE_3__*) ;
 char* stringf (char*,...) ;
 TYPE_3__* voidtype ;
 int warning (char*,int) ;

char *typestring(Type ty, char *str) {
 for ( ; ty; ty = ty->type) {
  Symbol p;
  switch (ty->op) {
  case 138 +128: case 138: case 128:
   if (isptr(ty->type))
    str = stringf("%k %s", ty->op, str);
   else
    return stringf("%k %s", ty->op, typestring(ty->type, str));
   break;
  case 132: case 131: case 137:
   assert(ty->u.sym);
   if ((p = findtype(ty)) != ((void*)0))
    return *str ? stringf("%s %s", p->name, str) : p->name;
   if (*ty->u.sym->name >= '1' && *ty->u.sym->name <= '9')
    warning("unnamed %k in prototype\n", ty->op);
   if (*str)
    return stringf("%k %s %s", ty->op, ty->u.sym->name, str);
   else
    return stringf("%k %s", ty->op, ty->u.sym->name);
  case 129: case 136: case 134: case 130:
   return *str ? stringf("%s %s", ty->u.sym->name, str) : ty->u.sym->name;
  case 133:
   if (!ischar(ty->type) && (p = findtype(ty)) != ((void*)0))
    return *str ? stringf("%s %s", p->name, str) : p->name;
   str = stringf(isarray(ty->type) || isfunc(ty->type) ? "(*%s)" : "*%s", str);
   break;
  case 135:
   if ((p = findtype(ty)) != ((void*)0))
    return *str ? stringf("%s %s", p->name, str) : p->name;
   if (ty->u.f.proto == 0)
    str = stringf("%s()", str);
   else if (ty->u.f.proto[0]) {
    int i;
    str = stringf("%s(%s", str, typestring(ty->u.f.proto[0], ""));
    for (i = 1; ty->u.f.proto[i]; i++)
     if (ty->u.f.proto[i] == voidtype)
      str = stringf("%s, ...", str);
     else
      str = stringf("%s, %s", str, typestring(ty->u.f.proto[i], ""));
    str = stringf("%s)", str);
   } else
    str = stringf("%s(void)", str);
   break;
  case 139:
   if ((p = findtype(ty)) != ((void*)0))
    return *str ? stringf("%s %s", p->name, str) : p->name;
   if (ty->type && ty->type->size > 0)
    str = stringf("%s[%d]", str, ty->size/ty->type->size);
   else
    str = stringf("%s[]", str);
   break;
  default: assert(0);
  }
 }
 assert(0); return 0;
}
