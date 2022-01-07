
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long H_MUL ;
 int get_id_by_hash (long long) ;

int get_id (int *v) {
  long long h = 0;
  int i;
  for (i = 0; v[i]; i++) {
    h = h * H_MUL + v[i];
  }

  return get_id_by_hash (h);
}
