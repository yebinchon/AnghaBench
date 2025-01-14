
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tl_store_int (int) ;
 int tl_store_string0 (char*) ;

void tl_serialize_list_2a (int *ptr) {
  int e = ptr ? ptr[-1] : 0;
  tl_store_int (e);
  int i;
  for (i = 0; i < e; i++) {
    static char t[4];
    t[0] = (char)((ptr[2 * i]>>16) & 0xff);
    t[1] = (char)((ptr[2 * i]>>8) & 0xff);
    t[2] = (char)(ptr[2 * i] & 0xff);
    t[3] = 0;
    tl_store_string0 (t);
    tl_store_int (ptr[2 * i + 1]);
  }
}
