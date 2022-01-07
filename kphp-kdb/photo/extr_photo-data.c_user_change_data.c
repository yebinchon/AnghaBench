
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int field ;
typedef int data ;


 int assert (int ) ;
 scalar_t__ data_get_hidden_state (int *,int) ;
 int data_get_local_id_by_id (int *,int) ;
 int user_change_data_lid (int *,int,int *,int) ;

inline int user_change_data (data *d, int id, field *field_changes, int field_changes_n, int force) {


  assert (d != ((void*)0));
  int lid = data_get_local_id_by_id (d, id);
  if (lid == -1) {
    return 0;
  }

  if (!force && data_get_hidden_state (d, id) != 0) {
    return 0;
  }

  return user_change_data_lid (d, lid, field_changes, field_changes_n);
}
