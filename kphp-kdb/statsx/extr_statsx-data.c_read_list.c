
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int*) ;
 int readin (char*,int) ;
 int* zzmalloc0 (int) ;

int* read_list (int l) {
  int *a = zzmalloc0 (l * sizeof (int));
  assert (a);
  readin ((char *)a, l * sizeof (int));
  return a;
}
