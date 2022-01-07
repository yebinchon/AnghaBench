
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int dummy; } ;
struct lev_del_entry {int dummy; } ;
typedef int object_id_t ;
typedef int list_id_t ;


 int FIRST_INT (int ) ;
 int LEV_LI_DEL_ENTRY ;
 struct lev_del_entry* alloc_log_event (int ,scalar_t__,int ) ;
 scalar_t__ conv_list_id (int ) ;
 int delete_entry (int ,int ,int,struct lev_generic*) ;
 scalar_t__ lev_list_object_bytes ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 int upcopy_list_object_id (struct lev_del_entry*,int ,int ) ;

int do_delete_list_entry (list_id_t list_id, object_id_t object_id) {
  if (conv_list_id (list_id) < 0) {
    return -1;
  }
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -2;
  }

  struct lev_del_entry *E = alloc_log_event (LEV_LI_DEL_ENTRY, sizeof (struct lev_del_entry) + lev_list_object_bytes, FIRST_INT (list_id));
  upcopy_list_object_id (E, list_id, object_id);

  return delete_entry (list_id, object_id, 1, (struct lev_generic *)E);
}
