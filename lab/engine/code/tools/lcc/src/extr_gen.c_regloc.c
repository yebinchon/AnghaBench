
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* regnode; } ;
struct TYPE_7__ {scalar_t__ sclass; TYPE_2__ x; } ;
struct TYPE_5__ {int set; int number; } ;
typedef TYPE_3__* Symbol ;


 scalar_t__ REGISTER ;
 int assert (int ) ;

unsigned regloc(Symbol p) {
 assert(p && p->sclass == REGISTER && p->sclass == REGISTER && p->x.regnode);
 return p->x.regnode->set<<8 | p->x.regnode->number;
}
