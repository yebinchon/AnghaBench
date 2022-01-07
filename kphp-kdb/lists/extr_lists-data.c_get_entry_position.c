
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;
typedef int list_t ;
typedef int list_id_t ;


 int OTree ;
 int * __get_list_f (int ,int) ;
 int listree_get_pos_large (int *,int ,int) ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 int unpack_metafile_pointers (int *) ;

int get_entry_position (list_id_t list_id, object_id_t object_id) {
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -2;
  }
  list_t *L = __get_list_f (list_id, 2);
  if (!L) {
    return -1;
  }
  unpack_metafile_pointers (L);

  return listree_get_pos_large (&OTree, object_id, 1);
}
