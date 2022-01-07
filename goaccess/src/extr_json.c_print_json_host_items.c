
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ list_agents; } ;
struct TYPE_5__ {int * sub_list; } ;
typedef int GPercTotals ;
typedef int GJSON ;
typedef TYPE_1__ GHolderItem ;


 TYPE_4__ conf ;
 int print_json_host_geo (int *,int *,int) ;
 int process_host_agents (int *,TYPE_1__*,int) ;

__attribute__((used)) static void
print_json_host_items (GJSON * json, GHolderItem * item, GPercTotals totals,
                       int size, int iisp)
{
  (void) totals;

  if (size > 0 && item->sub_list != ((void*)0))
    print_json_host_geo (json, item->sub_list, iisp);


  if (conf.list_agents)
    process_host_agents (json, item, iisp);
}
