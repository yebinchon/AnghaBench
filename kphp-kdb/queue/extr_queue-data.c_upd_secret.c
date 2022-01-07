
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* map_int_int_add (int *,int) ;
 int rand () ;
 int secrets ;

int upd_secret (int id) {
  int *v = map_int_int_add (&secrets, id);
  int nv = rand();
  if (nv == *v) {
    nv += 13;
  }
  return *v = nv;
}
