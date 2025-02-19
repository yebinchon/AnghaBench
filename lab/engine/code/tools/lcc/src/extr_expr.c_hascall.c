
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_5__ {scalar_t__ mulops_calls; } ;
struct TYPE_4__ {scalar_t__ op; struct TYPE_4__** kids; } ;


 scalar_t__ CALL ;
 scalar_t__ DIV ;
 scalar_t__ I ;
 TYPE_3__* IR ;
 scalar_t__ MOD ;
 scalar_t__ MUL ;
 scalar_t__ U ;
 scalar_t__ generic (scalar_t__) ;

int hascall(Tree p) {
 if (p == 0)
  return 0;
 if (generic(p->op) == CALL || (IR->mulops_calls &&
   (p->op == DIV+I || p->op == MOD+I || p->op == MUL+I
 || p->op == DIV+U || p->op == MOD+U || p->op == MUL+U)))
  return 1;
 return hascall(p->kids[0]) || hascall(p->kids[1]);
}
