
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct conn_target {int port; TYPE_1__ target; int * type; scalar_t__ target_ipv6; } ;
typedef int conn_type_t ;


 struct conn_target** HTarget ;
 unsigned long PRIME_TARGETS ;
 int assert (int) ;

struct conn_target **find_target_ipv6 (unsigned char ad_ipv6[16], int port, conn_type_t *type) {
  assert (*(long long *)ad_ipv6 || ((long long *) ad_ipv6)[1]);
  unsigned h1 = ((unsigned long) type * 0xabacaba) % PRIME_TARGETS;
  unsigned h2 = ((unsigned long) type * 0xdabacab) % (PRIME_TARGETS - 1);
  int i;
  for (i = 0; i < 4; i++) {
    h1 = ((unsigned long long) h1 * 17239 + ((unsigned *) ad_ipv6)[i]) % PRIME_TARGETS;
    h2 = ((unsigned long long) h2 * 23917 + ((unsigned *) ad_ipv6)[i]) % (PRIME_TARGETS - 1);
  }
  h1 = (h1 * 239 + port) % PRIME_TARGETS;
  h2 = (h2 * 17 + port) % (PRIME_TARGETS - 1) + 1;
  while (HTarget[h1]) {
    if (
 ((long long *)HTarget[h1]->target_ipv6)[1] == ((long long *)ad_ipv6)[1] &&
 *(long long *)HTarget[h1]->target_ipv6 == *(long long *)ad_ipv6 &&
        HTarget[h1]->port == port &&
 HTarget[h1]->type == type && !HTarget[h1]->target.s_addr) {
      return HTarget + h1;
    }
    if ((h1 += h2) >= PRIME_TARGETS) {
      h1 -= PRIME_TARGETS;
    }
  }
  return HTarget + h1;
}
