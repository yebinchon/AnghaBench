
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_5__* Type ;
struct TYPE_19__ {int outofline; int align; int size; } ;
struct TYPE_14__ {int i; int u; int d; } ;
struct TYPE_13__ {int d; int u; int i; } ;
struct TYPE_15__ {TYPE_2__ max; TYPE_1__ min; } ;
struct TYPE_16__ {TYPE_3__ limits; } ;
struct TYPE_18__ {TYPE_4__ u; int addressed; TYPE_5__* type; } ;
struct TYPE_17__ {int align; int size; int op; } ;
typedef TYPE_6__* Symbol ;
typedef TYPE_7__ Metrics ;


 int DBL_MAX ;

 int FLT_MAX ;
 int GLOBAL ;

 int LDBL_MAX ;
 int PERM ;

 int assert (int) ;
 TYPE_6__* install (int ,int *,int ,int ) ;
 int ones (int) ;
 int string (char*) ;
 TYPE_5__* type (int,int ,int ,int ,TYPE_6__*) ;
 int types ;

__attribute__((used)) static Type xxinit(int op, char *name, Metrics m) {
 Symbol p = install(string(name), &types, GLOBAL, PERM);
 Type ty = type(op, 0, m.size, m.align, p);

 assert(ty->align == 0 || ty->size%ty->align == 0);
 p->type = ty;
 p->addressed = m.outofline;
 switch (ty->op) {
 case 129:
  p->u.limits.max.i = ones(8*ty->size)>>1;
  p->u.limits.min.i = -p->u.limits.max.i - 1;
  break;
 case 128:
  p->u.limits.max.u = ones(8*ty->size);
  p->u.limits.min.u = 0;
  break;
 case 130:
  if (ty->size == sizeof (float))
   p->u.limits.max.d = FLT_MAX;
  else if (ty->size == sizeof (double))
   p->u.limits.max.d = DBL_MAX;
  else
   p->u.limits.max.d = LDBL_MAX;
  p->u.limits.min.d = -p->u.limits.max.d;
  break;
 default: assert(0);
 }
 return ty;
}
