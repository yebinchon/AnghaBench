
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_4__* Tree ;
struct TYPE_11__ {int * loc; } ;
struct TYPE_12__ {TYPE_1__ c; } ;
struct TYPE_15__ {TYPE_2__ u; } ;
struct TYPE_13__ {int * sym; int v; } ;
struct TYPE_14__ {TYPE_3__ u; int type; } ;
typedef TYPE_5__* Symbol ;


 int ADDRG ;
 int GLOBAL ;
 int STATIC ;
 int atop (int ) ;
 TYPE_5__* constant (int ,int ) ;
 int * genident (int ,int ,int ) ;
 TYPE_4__* idtree (int *) ;
 scalar_t__ isarray (int ) ;
 TYPE_4__* simplify (int ,int ,int *,int *) ;

Tree cvtconst(Tree p) {
 Symbol q = constant(p->type, p->u.v);
 Tree e;

 if (q->u.c.loc == ((void*)0))
  q->u.c.loc = genident(STATIC, p->type, GLOBAL);
 if (isarray(p->type)) {
  e = simplify(ADDRG, atop(p->type), ((void*)0), ((void*)0));
  e->u.sym = q->u.c.loc;
 } else
  e = idtree(q->u.c.loc);
 return e;
}
