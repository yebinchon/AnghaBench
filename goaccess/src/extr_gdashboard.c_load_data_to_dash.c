
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_18__ {TYPE_1__* module; } ;
struct TYPE_17__ {TYPE_10__* items; scalar_t__ sub_items_size; int holder_size; } ;
struct TYPE_16__ {size_t current; scalar_t__ expanded; } ;
struct TYPE_15__ {int * data; } ;
struct TYPE_14__ {int alloc_data; int meta; int holder_size; int data; } ;
struct TYPE_13__ {TYPE_2__* metrics; } ;
typedef TYPE_3__ GScroll ;
typedef size_t GModule ;
typedef TYPE_4__ GHolder ;
typedef int GDashData ;
typedef TYPE_5__ GDash ;


 int add_item_to_dash (TYPE_5__**,TYPE_10__,size_t) ;
 int add_sub_item_to_dash (TYPE_5__**,TYPE_10__,size_t,int*) ;
 int memset (int *,int ,int) ;
 int new_gdata (int) ;

void
load_data_to_dash (GHolder * h, GDash * dash, GModule module, GScroll * gscroll)
{
  int alloc_size = 0;
  int i, j;

  alloc_size = dash->module[module].alloc_data;
  if (gscroll->expanded && module == gscroll->current)
    alloc_size += h->sub_items_size;

  dash->module[module].alloc_data = alloc_size;
  dash->module[module].data = new_gdata (alloc_size);
  dash->module[module].holder_size = h->holder_size;
  memset (&dash->module[module].meta, 0, sizeof (GDashData));

  for (i = 0, j = 0; i < alloc_size; i++) {
    if (h->items[j].metrics->data == ((void*)0))
      continue;

    add_item_to_dash (&dash, h->items[j], module);
    if (gscroll->expanded && module == gscroll->current && h->sub_items_size)
      add_sub_item_to_dash (&dash, h->items[j], module, &i);
    j++;
  }
}
