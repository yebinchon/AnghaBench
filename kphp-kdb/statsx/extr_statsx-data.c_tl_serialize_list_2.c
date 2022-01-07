
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tl_store_int (int) ;
 int tl_store_raw_data (int*,int) ;

void tl_serialize_list_2 (int *ptr) {
  int e = ptr ? ptr[-1] : 0;
  tl_store_int (e);
  tl_store_raw_data (ptr, 8 * e);
}
