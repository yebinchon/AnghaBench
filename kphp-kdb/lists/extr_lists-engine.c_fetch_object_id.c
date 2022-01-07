
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** var_object_id_t ;


 int assert (int *****) ;
 int object_id_ints ;
 scalar_t__ tl_fetch_check (int) ;
 int tl_fetch_raw_data (int *****,int) ;

int fetch_object_id (var_object_id_t *object_id) {
  assert (object_id);
  if (tl_fetch_check (4 * object_id_ints) < 0) {
    return -1;
  }





  tl_fetch_raw_data (object_id, 4);

  return 0;
}
