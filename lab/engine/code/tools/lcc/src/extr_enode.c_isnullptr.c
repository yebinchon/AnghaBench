
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* Type ;
typedef TYPE_4__* Tree ;
struct TYPE_9__ {scalar_t__ i; scalar_t__ u; int * p; } ;
struct TYPE_8__ {TYPE_2__ v; } ;
struct TYPE_11__ {TYPE_1__ u; int op; int type; } ;
struct TYPE_10__ {scalar_t__ op; } ;


 scalar_t__ CNST ;
 scalar_t__ INT ;
 scalar_t__ UNSIGNED ;
 scalar_t__ generic (int ) ;
 scalar_t__ isvoidptr (TYPE_3__*) ;
 TYPE_3__* unqual (int ) ;

int isnullptr(Tree e) {
 Type ty = unqual(e->type);

 return generic(e->op) == CNST
     && ((ty->op == INT && e->u.v.i == 0)
      || (ty->op == UNSIGNED && e->u.v.u == 0)
      || (isvoidptr(ty) && e->u.v.p == ((void*)0)));
}
