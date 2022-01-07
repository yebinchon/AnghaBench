
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_3__* Type ;
struct TYPE_16__ {int oldstyle; int proto; } ;
struct TYPE_17__ {TYPE_1__ f; } ;
struct TYPE_18__ {int op; int size; TYPE_2__ u; struct TYPE_18__* type; } ;
typedef int Symbol ;



 int Aflag ;




 TYPE_3__* array (TYPE_3__*,int,int ) ;
 int assert (int ) ;
 TYPE_3__* dclr1 (char**,int **,int) ;
 TYPE_3__* func (TYPE_3__*,int ,int ) ;
 TYPE_3__* ptr (TYPE_3__*) ;
 TYPE_3__* qual (int,TYPE_3__*) ;
 int warning (char*,TYPE_3__*) ;

__attribute__((used)) static Type dclr(Type basety, char **id, Symbol **params, int abstract) {
 Type ty = dclr1(id, params, abstract);

 for ( ; ty; ty = ty->type)
  switch (ty->op) {
  case 129:
   basety = ptr(basety);
   break;
  case 130:
   basety = func(basety, ty->u.f.proto,
    ty->u.f.oldstyle);
   break;
  case 132:
   basety = array(basety, ty->size, 0);
   break;
  case 131: case 128:
   basety = qual(ty->op, basety);
   break;
  default: assert(0);
  }
 if (Aflag >= 2 && basety->size > 32767)
  warning("more than 32767 bytes in `%t'\n", basety);
 return basety;
}
