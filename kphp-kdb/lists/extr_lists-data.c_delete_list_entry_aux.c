
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;
typedef int listree_xglobal_t ;
typedef int listree_t ;
typedef int global_id_t ;


 int SUBCATS ;
 int Y_MULT ;
 int listree_delete_global (int *,int,int) ;
 int listree_delete_small (int *,int,int) ;
 int load_g_tree (int *) ;
 int load_g_tree_sub (int *,int) ;
 int load_o_tree_sub (int *,int) ;
 int lrand48 () ;

__attribute__((used)) static inline void delete_list_entry_aux (object_id_t object_id, global_id_t global_id, int flags) {
  int cat = flags & (SUBCATS - 1);
  listree_t OTreeSub;
  listree_xglobal_t GTree, GTreeSub;
  load_o_tree_sub (&OTreeSub, cat);
  load_g_tree (&GTree);
  load_g_tree_sub (&GTreeSub, cat);
  listree_delete_small (&OTreeSub, object_id, lrand48 () );




  listree_delete_small (&GTree, global_id, object_id * Y_MULT);
  listree_delete_small (&GTreeSub, global_id, object_id * Y_MULT);

}
