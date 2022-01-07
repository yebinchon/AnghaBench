
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int passes ;
 int * temp_file ;
 int tmp_write_logevent (int *,void const*,int) ;

int tmp_dispatch_logevent_all (const void *L, int size) {
  int i;
  for (i = 0; i < passes; i++) {
    tmp_write_logevent (&temp_file[i], L, size);
  }
  return passes;
}
