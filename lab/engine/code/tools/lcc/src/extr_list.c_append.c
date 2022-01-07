
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* x; struct TYPE_6__* link; } ;
typedef TYPE_1__* List ;


 int NEW (TYPE_1__*,int ) ;
 int PERM ;
 TYPE_1__* freenodes ;

List append(void *x, List list) {
 List new;

 if ((new = freenodes) != ((void*)0))
  freenodes = freenodes->link;
 else
  NEW(new, PERM);
 if (list) {
  new->link = list->link;
  list->link = new;
 } else
  new->link = new;
 new->x = x;
 return new;
}
