
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int mutex; } ;
struct TYPE_12__ {size_t current; scalar_t__ expanded; } ;
struct TYPE_11__ {TYPE_1__* module; int total_alloc; } ;
struct TYPE_10__ {int idx; int ht_size; } ;
struct TYPE_9__ {int alloc_data; scalar_t__ dash_size; scalar_t__ pos_y; scalar_t__ idx_data; int ht_size; int desc; int head; } ;
typedef size_t GModule ;


 scalar_t__ DASH_COLLAPSED ;
 scalar_t__ DASH_EXPANDED ;
 TYPE_3__* dash ;
 TYPE_7__ gdns_thread ;
 int get_max_choices () ;
 TYPE_4__ gscroll ;
 TYPE_2__* holder ;
 int load_data_to_dash (TYPE_2__*,TYPE_3__*,size_t,TYPE_4__*) ;
 int module_to_desc (size_t) ;
 int module_to_head (size_t) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
allocate_data_by_module (GModule module, int col_data)
{
  int size = 0, max_choices = get_max_choices ();

  dash->module[module].head = module_to_head (module);
  dash->module[module].desc = module_to_desc (module);

  size = holder[module].idx;
  if (gscroll.expanded && module == gscroll.current) {
    size = size > max_choices ? max_choices : holder[module].idx;
  } else {
    size = holder[module].idx > col_data ? col_data : holder[module].idx;
  }

  dash->module[module].alloc_data = size;
  dash->module[module].ht_size = holder[module].ht_size;
  dash->module[module].idx_data = 0;
  dash->module[module].pos_y = 0;

  if (gscroll.expanded && module == gscroll.current)
    dash->module[module].dash_size = DASH_EXPANDED;
  else
    dash->module[module].dash_size = DASH_COLLAPSED;
  dash->total_alloc += dash->module[module].dash_size;

  pthread_mutex_lock (&gdns_thread.mutex);
  load_data_to_dash (&holder[module], dash, module, &gscroll);
  pthread_mutex_unlock (&gdns_thread.mutex);
}
