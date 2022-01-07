
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netrule {int type; unsigned int mask2; } ;


 int assert (int) ;
 scalar_t__ check_rule (struct netrule*,unsigned int) ;

int check_common_rule (struct netrule *A, unsigned ip1, unsigned ip2) {
  assert (A->type);
  if (A->type == 1) {
    return check_rule (A, ip1) && check_rule (A, ip2);
  } else {
    return 2 * (check_rule (A, ip1) && check_rule (A, ip2) && ((ip1 & ~(A->mask2)) == (ip2 & ~(A->mask2))));
  }
}
