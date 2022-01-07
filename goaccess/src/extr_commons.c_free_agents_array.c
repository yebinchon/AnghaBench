
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; struct TYPE_4__* items; struct TYPE_4__* agent; } ;
typedef TYPE_1__ GAgents ;


 int free (TYPE_1__*) ;

void
free_agents_array (GAgents * agents)
{
  int i;

  if (agents == ((void*)0))
    return;


  for (i = 0; i < agents->size; ++i)
    free (agents->items[i].agent);
  if (agents->items)
    free (agents->items);
  free (agents);
}
