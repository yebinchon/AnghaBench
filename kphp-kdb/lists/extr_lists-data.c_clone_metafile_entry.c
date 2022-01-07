
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_ext_large_t ;
struct tree_payload {int date; int value; int flags; scalar_t__ text; int global_id; } ;
typedef int object_id_t ;


 int * M_global_id_list ;
 int M_obj_id_list ;
 int M_tot_entries ;
 scalar_t__ NODE_TYPE (int *) ;
 int OARR_ENTRY (int ,int) ;
 int OTree ;
 struct tree_payload* PAYLOAD (int *) ;
 scalar_t__ TF_ZERO ;
 int assert (int) ;
 int * listree_replace_large (int *,int ) ;
 int metafile_get_date (int) ;
 int metafile_get_flags (int) ;
 int metafile_get_value (int) ;

__attribute__((used)) static tree_ext_large_t *clone_metafile_entry (int temp_id) {
  assert (temp_id >= 0 && temp_id < M_tot_entries);
  object_id_t object_id = OARR_ENTRY (M_obj_id_list, temp_id);
  tree_ext_large_t *T = listree_replace_large (&OTree, object_id);
  assert (NODE_TYPE (T) == TF_ZERO);
  struct tree_payload *P = PAYLOAD (T);
  P->global_id = M_global_id_list[temp_id];
  P->text = 0;
  P->flags = metafile_get_flags (temp_id);
  P->value = metafile_get_value (temp_id);
  P->date = metafile_get_date (temp_id);
  return T;
}
