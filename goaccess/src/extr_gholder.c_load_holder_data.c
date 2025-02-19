
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int holder_size; int ht_size; scalar_t__ sub_items_size; scalar_t__ idx; int items; int module; } ;
struct TYPE_12__ {int (* insert ) (int ,TYPE_3__*,int ,TYPE_2__ const*) ;} ;
struct TYPE_11__ {int size; int type; int * items; } ;
typedef int GSort ;
typedef TYPE_1__ GRawData ;
typedef TYPE_2__ GPanel ;
typedef int GModule ;
typedef TYPE_3__ GHolder ;


 int free_raw_data (TYPE_1__*) ;
 int get_max_choices () ;
 int new_gholder_item (int) ;
 TYPE_2__* panel_lookup (int ) ;
 int sort_holder_items (int ,scalar_t__,int ) ;
 int sort_sub_list (TYPE_3__*,int ) ;
 int stub1 (int ,TYPE_3__*,int ,TYPE_2__ const*) ;

void
load_holder_data (GRawData * raw_data, GHolder * h, GModule module, GSort sort)
{
  int i, size = 0, max_choices = get_max_choices ();
  const GPanel *panel = panel_lookup (module);

  size = raw_data->size;
  h->holder_size = size > max_choices ? max_choices : size;
  h->ht_size = size;
  h->idx = 0;
  h->module = module;
  h->sub_items_size = 0;
  h->items = new_gholder_item (h->holder_size);

  for (i = 0; i < h->holder_size; i++) {
    panel->insert (raw_data->items[i], h, raw_data->type, panel);
  }
  sort_holder_items (h->items, h->idx, sort);
  if (h->sub_items_size)
    sort_sub_list (h, sort);
  free_raw_data (raw_data);
}
