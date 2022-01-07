
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Type ;
typedef TYPE_1__* Tree ;
struct TYPE_6__ {int op; struct TYPE_6__** kids; int type; } ;


 int NEW0 (TYPE_1__*,int ) ;
 int where ;

Tree tree(int op, Type type, Tree left, Tree right) {
 Tree p;

 NEW0(p, where);
 p->op = op;
 p->type = type;
 p->kids[0] = left;
 p->kids[1] = right;
 return p;
}
