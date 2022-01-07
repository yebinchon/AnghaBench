
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int next_idx; size_t module; } ;
struct TYPE_7__ {size_t current; int dash; int expanded; TYPE_1__* module; } ;
struct TYPE_6__ {int scroll; int offset; } ;
typedef TYPE_2__ GScroll ;
typedef size_t GModule ;


 int DASH_COLLAPSED ;
 TYPE_5__ find_t ;
 int get_module_index (size_t) ;
 int get_num_expanded_data_rows () ;
 int reset_scroll_offsets (TYPE_2__*) ;

__attribute__((used)) static void
perform_find_dash_scroll (GScroll * gscroll, GModule module)
{
  int *scrll, *offset;
  int exp_size = get_num_expanded_data_rows ();


  if (gscroll->current != module)
    reset_scroll_offsets (gscroll);

  scrll = &gscroll->module[module].scroll;
  offset = &gscroll->module[module].offset;

  (*scrll) = find_t.next_idx;
  if (*scrll >= exp_size && *scrll >= *offset + exp_size)
    (*offset) = (*scrll) < exp_size - 1 ? 0 : (*scrll) - exp_size + 1;

  gscroll->current = module;
  gscroll->dash = get_module_index (module) * DASH_COLLAPSED;
  gscroll->expanded = 1;
  find_t.module = module;
}
