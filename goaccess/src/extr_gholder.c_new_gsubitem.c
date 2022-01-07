
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next; int * prev; int module; int * metrics; } ;
typedef TYPE_1__ GSubItem ;
typedef int GModule ;
typedef int GMetrics ;


 TYPE_1__* xmalloc (int) ;

__attribute__((used)) static GSubItem *
new_gsubitem (GModule module, GMetrics * nmetrics)
{
  GSubItem *sub_item = xmalloc (sizeof (GSubItem));

  sub_item->metrics = nmetrics;
  sub_item->module = module;
  sub_item->prev = ((void*)0);
  sub_item->next = ((void*)0);

  return sub_item;
}
