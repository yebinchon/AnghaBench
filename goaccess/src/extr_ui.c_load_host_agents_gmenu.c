
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * items; } ;
typedef int GSLList ;
typedef TYPE_1__ GMenu ;
typedef int GItem ;


 int fill_host_agents_gmenu ;
 int list_foreach (int *,int ,TYPE_1__*) ;
 scalar_t__ xcalloc (int,int) ;

__attribute__((used)) static void
load_host_agents_gmenu (void *list, void *user_data, int count)
{
  GSLList *lst = list;
  GMenu *menu = user_data;

  menu->items = (GItem *) xcalloc (count, sizeof (GItem));
  list_foreach (lst, fill_host_agents_gmenu, menu);
}
