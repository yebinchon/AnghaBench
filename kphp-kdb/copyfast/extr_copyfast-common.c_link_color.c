
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_common_rule (int *,unsigned int,unsigned int) ;
 int * network ;
 int rules_num ;

int link_color (unsigned ip1, unsigned ip2) {
  int i;
  int best = 0;
  for (i = 0; i < rules_num; i++) {
    int r = check_common_rule (&network[i], ip1, ip2);
    if (r == 2) {
      return 2;
    }
    if (r == 1) {
      best = 1;
    }
  }
  return best;
}
