
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tl_store_int (int ) ;
 int tl_store_raw_data (int*,int) ;

void tl_serialize_list (int *ptr, int size) {
  if (!ptr) {
    int i;
    for (i = 0; i < size; i++) {
      tl_store_int (0);
    }
  } else {
    tl_store_raw_data (ptr, 4 * size);
  }
}
