
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* stabtype ) (TYPE_1__*) ;} ;
struct TYPE_5__ {scalar_t__ sclass; } ;
typedef TYPE_1__* Symbol ;


 TYPE_4__* IR ;
 scalar_t__ TYPEDEF ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void typestab(Symbol p, void *cl) {
 if (*(Symbol *)cl == 0 && p->sclass && p->sclass != TYPEDEF)
  *(Symbol *)cl = p;
 if ((p->sclass == TYPEDEF || p->sclass == 0) && IR->stabtype)
  (*IR->stabtype)(p);
}
