
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* link; } ;
typedef TYPE_1__* Node ;


 TYPE_1__* forest ;

__attribute__((used)) static void list(Node p) {
 if (p && p->link == ((void*)0)) {
  if (forest) {
   p->link = forest->link;
   forest->link = p;
  } else
   p->link = p;
  forest = p;
 }
}
