
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* defsymbol ) (TYPE_2__*) ;} ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {int name; TYPE_1__ x; } ;
typedef TYPE_2__* Symbol ;


 int ANCHOR (int ,int ) ;
 int BEGIN (int ) ;
 int END ;
 TYPE_5__* IR ;
 int code ;
 int href ;
 int print (char*,int ) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void emitSymRef(Symbol p) {
 (*IR->defsymbol)(p);
 ANCHOR(href,print("#%s", p->x.name)); BEGIN(code); print("%s", p->name); END; END;
}
