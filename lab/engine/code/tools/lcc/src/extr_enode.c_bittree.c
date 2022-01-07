
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int Type ;
typedef TYPE_1__* Tree ;
struct TYPE_12__ {int type; } ;


 int binary (int ,int ) ;
 TYPE_1__* cast (TYPE_1__*,int ) ;
 int inttype ;
 scalar_t__ isint (int ) ;
 TYPE_1__* simplify (int,int ,TYPE_1__*,TYPE_1__*) ;
 int typeerror (int,TYPE_1__*,TYPE_1__*) ;

Tree bittree(int op, Tree l, Tree r) {
 Type ty = inttype;

 if (isint(l->type) && isint(r->type)) {
   ty = binary(l->type, r->type);
  l = cast(l, ty);
  r = cast(r, ty);
 } else
  typeerror(op, l, r);
 return simplify(op, ty, l, r);
}
