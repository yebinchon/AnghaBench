
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_del_obj {int dummy; } ;
typedef int object_id_t ;


 int FIRST_INT (int ) ;
 int LEV_LI_DEL_OBJ ;
 void* alloc_log_event (int ,scalar_t__,int ) ;
 int delete_object (int ) ;
 scalar_t__ lev_object_id_bytes ;
 scalar_t__ prepare_object_metafile (int ,int) ;
 scalar_t__ revlist_metafile_mode ;
 int upcopy_object_id (void*,int ) ;

int do_delete_object (object_id_t object_id) {
  if (revlist_metafile_mode && prepare_object_metafile (object_id, 1) < 0) {
    return -2;
  }
  void *E = alloc_log_event (LEV_LI_DEL_OBJ, sizeof (struct lev_del_obj) + lev_object_id_bytes, FIRST_INT(object_id));
  upcopy_object_id (E, object_id);
  return delete_object (object_id);
}
