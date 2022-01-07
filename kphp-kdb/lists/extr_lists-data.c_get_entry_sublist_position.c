
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;
typedef int listree_t ;
typedef int list_t ;
typedef int list_id_t ;


 int OTree ;
 int SUBCATS ;
 int * __get_list_f (int ,int) ;
 int listree_get_pos_inderect (int *,int ,int) ;
 int listree_get_pos_large (int *,int ,int) ;
 int load_o_tree_sub (int *,int) ;
 scalar_t__ metafile_mode ;
 scalar_t__ prepare_list_metafile (int ,int) ;
 int unpack_metafile_pointers (int *) ;

int get_entry_sublist_position (list_id_t list_id, object_id_t object_id, int mode) {
  if (metafile_mode && prepare_list_metafile (list_id, 1) < 0) {
    return -2;
  }
  list_t *L = __get_list_f (list_id, 2);
  if (!L) {
    return -1;
  }
  unpack_metafile_pointers (L);
  int cat = mode & (SUBCATS-1);
  if (!(mode & (2*SUBCATS-1))) {
    cat = -1;
  }
  listree_t LI, *LT = &LI;

  if (cat < 0) {
    return listree_get_pos_large (&OTree, object_id, 1);
  } else {
    load_o_tree_sub (LT, cat);
    return listree_get_pos_inderect (LT, object_id, 1);
  }

}
