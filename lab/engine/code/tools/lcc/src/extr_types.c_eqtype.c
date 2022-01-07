
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_3__* Type ;
struct TYPE_12__ {TYPE_3__** proto; } ;
struct TYPE_13__ {TYPE_1__ f; } ;
struct TYPE_14__ {int op; struct TYPE_14__* type; TYPE_2__ u; int size; } ;
 int assert (int ) ;
 int isenum (TYPE_3__*) ;
 TYPE_3__* promote (TYPE_3__*) ;
 TYPE_3__* unqual (TYPE_3__*) ;
 int variadic (TYPE_3__*) ;

int eqtype(Type ty1, Type ty2, int ret) {
 if (ty1 == ty2)
  return 1;
 if (ty1->op != ty2->op)
  return 0;
 switch (ty1->op) {
 case 136: case 130: case 131:
 case 129: case 133: case 135:
  return 0;
 case 132: return eqtype(ty1->type, ty2->type, 1);
 case 128: case 137 +128:
 case 137: return eqtype(ty1->type, ty2->type, 1);
 case 138: if (eqtype(ty1->type, ty2->type, 1)) {
          if (ty1->size == ty2->size)
           return 1;
          if (ty1->size == 0 || ty2->size == 0)
           return ret;
         }
         return 0;
 case 134: if (eqtype(ty1->type, ty2->type, 1)) {
          Type *p1 = ty1->u.f.proto, *p2 = ty2->u.f.proto;
          if (p1 == p2)
           return 1;
          if (p1 && p2) {
           for ( ; *p1 && *p2; p1++, p2++)
     if (eqtype(unqual(*p1), unqual(*p2), 1) == 0)
      return 0;
    if (*p1 == ((void*)0) && *p2 == ((void*)0))
     return 1;
          } else {
           if (variadic(p1 ? ty1 : ty2))
     return 0;
    if (p1 == ((void*)0))
     p1 = p2;
    for ( ; *p1; p1++) {
     Type ty = unqual(*p1);
     if (promote(ty) != (isenum(ty) ? ty->type : ty))
      return 0;
    }
    return 1;
          }
         }
         return 0;
 }
 assert(0); return 0;
}
