
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* map_int_int_get (int *,int) ;
 int volumes ;

int get_server (int vid) {
  int *t = map_int_int_get (&volumes, vid);
  if (t != ((void*)0)) {
    return *t;
  }
  return vid / 1000;
}
