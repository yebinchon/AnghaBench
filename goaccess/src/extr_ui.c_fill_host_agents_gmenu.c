
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t size; TYPE_1__* items; } ;
struct TYPE_3__ {char* name; scalar_t__ checked; } ;
typedef TYPE_2__ GMenu ;


 char* ht_get_host_agent_val (int) ;

__attribute__((used)) static int
fill_host_agents_gmenu (void *val, void *user_data)
{
  GMenu *menu = user_data;
  char *agent = ht_get_host_agent_val ((*(int *) val));

  if (agent == ((void*)0))
    return 1;

  menu->items[menu->size].name = agent;
  menu->items[menu->size].checked = 0;
  menu->size++;

  return 0;
}
