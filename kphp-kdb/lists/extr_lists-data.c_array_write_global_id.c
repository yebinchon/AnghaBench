
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;
typedef int global_id_t ;


 int * M_global_id_list ;
 int assert (int ) ;
 int writeout_int (int ) ;
 int writeout_long (int ) ;

__attribute__((used)) static int array_write_global_id (listree_t *LT, int temp_id) {
  if (sizeof (global_id_t) == sizeof (int)) {
    writeout_int (M_global_id_list[temp_id]);
  } else if (sizeof (global_id_t) == sizeof (long long)) {
    writeout_long (M_global_id_list[temp_id]);
  } else {
    assert (0);
  }
  return 0;
}
