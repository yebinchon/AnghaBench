
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int (* global ) (TYPE_2__*) ;int (* export ) (TYPE_2__*) ;} ;
struct TYPE_7__ {int seg; } ;
struct TYPE_8__ {scalar_t__ sclass; int defined; TYPE_1__ u; } ;
typedef TYPE_2__* Symbol ;


 TYPE_6__* IR ;
 scalar_t__ STATIC ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int swtoseg (int) ;

void defglobal(Symbol p, int seg) {
 p->u.seg = seg;
 swtoseg(p->u.seg);
 if (p->sclass != STATIC)
  (*IR->export)(p);
 (*IR->global)(p);
 p->defined = 1;
}
