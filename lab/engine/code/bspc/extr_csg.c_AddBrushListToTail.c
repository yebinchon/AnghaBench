
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ bspbrush_t ;



bspbrush_t *AddBrushListToTail (bspbrush_t *list, bspbrush_t *tail)
{
 bspbrush_t *walk, *next;

 for (walk=list ; walk ; walk=next)
 {
  next = walk->next;
  walk->next = ((void*)0);
  tail->next = walk;
  tail = walk;
 }
 return tail;
}
