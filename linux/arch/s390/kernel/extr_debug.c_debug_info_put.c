
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; int debugfs_root_entry; int * debugfs_entries; int * views; int ref_count; } ;
typedef TYPE_1__ debug_info_t ;


 int DEBUG_MAX_VIEWS ;
 TYPE_1__* debug_area_first ;
 TYPE_1__* debug_area_last ;
 int debug_info_free (TYPE_1__*) ;
 int debugfs_remove (int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void debug_info_put(debug_info_t *db_info)
{
 int i;

 if (!db_info)
  return;
 if (refcount_dec_and_test(&db_info->ref_count)) {
  for (i = 0; i < DEBUG_MAX_VIEWS; i++) {
   if (!db_info->views[i])
    continue;
   debugfs_remove(db_info->debugfs_entries[i]);
  }
  debugfs_remove(db_info->debugfs_root_entry);
  if (db_info == debug_area_first)
   debug_area_first = db_info->next;
  if (db_info == debug_area_last)
   debug_area_last = db_info->prev;
  if (db_info->prev)
   db_info->prev->next = db_info->next;
  if (db_info->next)
   db_info->next->prev = db_info->prev;
  debug_info_free(db_info);
 }
}
