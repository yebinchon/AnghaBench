
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* map_int_int_get (int *,int) ;
 int secrets ;
 int upd_secret (int) ;

int get_secret (int id) {
  int *v = map_int_int_get (&secrets, id);
  if (v == ((void*)0)) {
    return upd_secret (id);
  }
  return *v;
}
