
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void tree_ext_large_t ;
typedef int object_id_t ;


 int OTree ;
 int SMALL_NODE (void*) ;
 int barray_account_date (int ,int) ;
 int btree_account_date (int ) ;
 void* listree_lookup_large (int *,int ,int*) ;

__attribute__((used)) static inline int b_account_date (object_id_t object_id) {
  int temp_id = -1;
  tree_ext_large_t *T = listree_lookup_large (&OTree, object_id, &temp_id);
  if (T != (void *) -1) {
    return btree_account_date (SMALL_NODE(T));
  } else {
    return barray_account_date (0, temp_id);
  }
}
