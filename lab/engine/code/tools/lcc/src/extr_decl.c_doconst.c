
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_18__ {unsigned int* p; int u; } ;
typedef TYPE_4__ Value ;
struct TYPE_21__ {int size; int op; TYPE_6__* type; } ;
struct TYPE_20__ {int size; int op; } ;
struct TYPE_16__ {TYPE_11__* loc; TYPE_4__ v; } ;
struct TYPE_17__ {TYPE_2__ c; } ;
struct TYPE_19__ {TYPE_3__ u; TYPE_9__* type; } ;
struct TYPE_15__ {scalar_t__ seg; } ;
struct TYPE_14__ {int (* defconst ) (int ,int,TYPE_4__) ;int (* defstring ) (int,unsigned int*) ;} ;
struct TYPE_13__ {TYPE_1__ u; } ;
typedef TYPE_5__* Symbol ;


 TYPE_12__* IR ;
 int LIT ;
 int assert (int) ;
 int defglobal (TYPE_11__*,int ) ;
 scalar_t__ isarray (TYPE_9__*) ;
 int stub1 (int ,int,TYPE_4__) ;
 int stub2 (int,unsigned int*) ;
 int stub3 (int ,int,TYPE_4__) ;
 TYPE_6__* widechar ;

void doconst(Symbol p, void *cl) {
 if (p->u.c.loc) {
  assert(p->u.c.loc->u.seg == 0);
  defglobal(p->u.c.loc, LIT);
  if (isarray(p->type) && p->type->type == widechar) {
   unsigned int *s = p->u.c.v.p;
   int n = p->type->size/widechar->size;
   while (n-- > 0) {
    Value v;
    v.u = *s++;
    (*IR->defconst)(widechar->op, widechar->size, v);
   }
  } else if (isarray(p->type))
   (*IR->defstring)(p->type->size, p->u.c.v.p);
  else
   (*IR->defconst)(p->type->op, p->type->size, p->u.c.v);
  p->u.c.loc = ((void*)0);
 }
}
