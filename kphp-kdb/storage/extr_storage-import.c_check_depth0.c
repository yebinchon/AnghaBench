
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int split_modulo ;
 int split_rem ;

__attribute__((used)) static int check_depth0 (int i) {
  int j, m = 100 % split_modulo;
  i %= split_modulo;
  if (m == 0) {
    return (i == split_rem);
  }
  for (j = 0; j < 100; j++) {
    if (i == split_rem) {
      return 1;
    }
    if ( (i += m) >= split_modulo) {
      i -= split_modulo;
    }
  }
  return 0;
}
