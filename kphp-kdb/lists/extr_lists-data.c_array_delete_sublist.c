
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 int * M_global_id_list ;
 int M_obj_id_list ;
 int OARR_ENTRY (int ,int) ;
 int delete_list_entry_aux (int ,int ,int) ;
 int f_and_c ;
 int f_cnt ;
 int f_xor_c ;
 int metafile_get_flags (int) ;
 int metafile_mode ;
 int * temp_object_list ;
 int temp_object_list_size ;
 int tot_list_entries ;

__attribute__((used)) static int array_delete_sublist (listree_t *LT, int temp_id) {
  if (!((metafile_get_flags (temp_id) ^ f_xor_c) & f_and_c)) {
    if (!(metafile_mode & 1)) {
      delete_list_entry_aux (OARR_ENTRY (M_obj_id_list, temp_id), M_global_id_list[temp_id], metafile_get_flags (temp_id));
      tot_list_entries--;
      f_cnt++;
      return 0;
    } else {
      temp_object_list[temp_object_list_size ++] = OARR_ENTRY (M_obj_id_list, temp_id);
      f_cnt++;
      return 1;
    }
  } else {
    return 1;
  }
}
