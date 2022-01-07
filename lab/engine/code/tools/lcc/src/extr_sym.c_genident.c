
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Type ;
struct TYPE_7__ {int (* defsymbol ) (TYPE_1__*) ;} ;
struct TYPE_6__ {int scope; int sclass; int generated; int type; int name; } ;
typedef TYPE_1__* Symbol ;


 int FUNC ;
 int GLOBAL ;
 TYPE_5__* IR ;
 int LOCAL ;
 int NEW0 (TYPE_1__*,int ) ;
 int PERM ;
 int genlabel (int) ;
 int stringd (int ) ;
 int stub1 (TYPE_1__*) ;

Symbol genident(int scls, Type ty, int lev) {
 Symbol p;

 NEW0(p, lev >= LOCAL ? FUNC : PERM);
 p->name = stringd(genlabel(1));
 p->scope = lev;
 p->sclass = scls;
 p->type = ty;
 p->generated = 1;
 if (lev == GLOBAL)
  (*IR->defsymbol)(p);
 return p;
}
