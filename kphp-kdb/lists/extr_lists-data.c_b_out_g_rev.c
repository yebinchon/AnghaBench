
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void tree_ext_large_t ;
typedef int object_id_t ;
typedef scalar_t__ global_id_t ;


 int OTree ;
 int* R_end ;
 int R_mode ;
 int SMALL_NODE (void*) ;
 int barray_out_node_rev (int ,int) ;
 int btree_out_node_rev (int ) ;
 void* listree_lookup_large (int *,int ,int*) ;
 int store_object_id_rev (int**,int ) ;

__attribute__((used)) static inline int b_out_g_rev (object_id_t object_id, global_id_t global_id) {
  int m = R_mode;
  if (m & 0x6c0) {
    int temp_id = -1;
    tree_ext_large_t *T = listree_lookup_large (&OTree, object_id, &temp_id);
    if (T != (void *)-1) {
      return btree_out_node_rev (SMALL_NODE(T));
    } else {
      return barray_out_node_rev (0, temp_id);
    }
  } else {
    int *p = R_end;
    if (m & 256) {
      *--p = (int)global_id;
    }
    store_object_id_rev (&p, object_id);
    R_end = p;
  }
  return 0;
}
