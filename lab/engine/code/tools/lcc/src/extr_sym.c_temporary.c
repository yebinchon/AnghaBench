
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Type ;
struct TYPE_4__ {int sclass; int temporary; int generated; int type; scalar_t__ scope; int name; } ;
typedef TYPE_1__* Symbol ;


 int FUNC ;
 scalar_t__ LOCAL ;
 int NEW0 (TYPE_1__*,int ) ;
 scalar_t__ level ;
 int stringd (int ) ;
 int tempid ;

Symbol temporary(int scls, Type ty) {
 Symbol p;

 NEW0(p, FUNC);
 p->name = stringd(++tempid);
 p->scope = level < LOCAL ? LOCAL : level;
 p->sclass = scls;
 p->type = ty;
 p->temporary = 1;
 p->generated = 1;
 return p;
}
