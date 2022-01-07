
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void tree_ext_large_t ;
typedef int object_id_t ;
typedef int list_t ;
typedef int list_id_t ;


 int OTree ;
 int * __get_list_f (int ,int) ;
 int check_metafile_loaded (int,int) ;
 int entry_exists (int ,int ) ;
 int get_list_metafile (int ) ;
 void* listree_lookup_large_tree (int *,int ,int*) ;
 int metafile_mode ;
 int unpack_metafile_pointers (int *) ;
 int unpack_metafile_pointers_short (int *) ;

int entry_exists_nof (list_id_t list_id, object_id_t object_id) {
  list_t *L = __get_list_f (list_id, -1);
  if (metafile_mode & 1) {
    if (!L) {
      return 1;
    }
    unpack_metafile_pointers_short (L);
    int temp_id;
    tree_ext_large_t *T = listree_lookup_large_tree (&OTree, object_id, &temp_id);
    if ((T && (T != (void *)-1)) || ((T == (void *)-1) && get_list_metafile (list_id) >= 0)) {
      return 1;
    } else {
      return 0;
    }
  }
  if (metafile_mode) {
    if (!L) {
      return 1;
    }


    int metafile_number = get_list_metafile (list_id);
    if (metafile_number < 0) {
      return 1;
    }
    if (!check_metafile_loaded (metafile_number, -1)) {
      return 1;
    }
    unpack_metafile_pointers (L);
  }
  return entry_exists (list_id, object_id);
}
