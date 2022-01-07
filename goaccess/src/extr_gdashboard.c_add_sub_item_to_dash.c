
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* sub_list; } ;
struct TYPE_6__ {int metrics; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* head; } ;
typedef TYPE_1__ GSubList ;
typedef TYPE_2__ GSubItem ;
typedef int GModule ;
typedef TYPE_3__ GHolderItem ;
typedef int GDash ;


 int set_dash_metrics (int **,int ,int ,int) ;

__attribute__((used)) static void
add_sub_item_to_dash (GDash ** dash, GHolderItem item, GModule module, int *i)
{
  GSubList *sub_list = item.sub_list;
  GSubItem *iter;

  if (sub_list == ((void*)0))
    return;

  for (iter = sub_list->head; iter; iter = iter->next, (*i)++) {
    set_dash_metrics (dash, iter->metrics, module, 1);
  }
}
