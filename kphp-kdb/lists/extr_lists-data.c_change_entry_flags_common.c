
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
 int listree_insert_global (int *,int,int) ;
 int listree_insert_small (int *,int,int) ;
 int load_g_tree_sub (int *,int) ;
 int load_o_tree_sub (int *,int) ;
 int lrand48 () ;

__attribute__((used)) static inline void change_entry_flags_common (object_id_t object_id, global_id_t global_id, int oldflags, int flags) {
  int old_cat = oldflags & (SUBCATS - 1);
  int new_cat = flags & (SUBCATS - 1);
  if (new_cat != old_cat) {
    listree_t OT1, OT2;
    listree_xglobal_t GT1, GT2;
    load_o_tree_sub (&OT1, old_cat);
    load_o_tree_sub (&OT2, new_cat);
    load_g_tree_sub (&GT1, old_cat);
    load_g_tree_sub (&GT2, new_cat);
    listree_delete_small (&OT1, object_id, lrand48 () );
    listree_insert_small (&OT2, object_id, lrand48 () );




    listree_delete_small (&GT1, global_id, object_id * Y_MULT);
    listree_insert_small (&GT2, global_id, object_id * Y_MULT);

  }
}
