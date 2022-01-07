
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** var_list_id_t ;


 int TL_ERROR_BAD_VALUE ;
 int assert (int *****) ;
 scalar_t__ conv_list_id (int ****) ;
 int list_id_ints ;
 int log_split_max ;
 int log_split_min ;
 int log_split_mod ;
 scalar_t__ tl_fetch_check (int) ;
 int tl_fetch_raw_data (int *****,int) ;
 int tl_fetch_set_error_format (int ,char*,int ,int ,int ) ;

int fetch_list_id (var_list_id_t *list_id) {
  assert (list_id);
  if (tl_fetch_check (4 * list_id_ints) < 0) {
    return -1;
  }





  tl_fetch_raw_data (list_id, 4);

  if (conv_list_id (*list_id) < 0) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "list_id in not from this engine. log_split_mod = %d, log_split_min = %d, log_split_max = %d", log_split_mod, log_split_min, log_split_max);
    return -1;
  }
  return 0;
}
