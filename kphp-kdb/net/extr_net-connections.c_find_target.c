
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {unsigned long s_addr; } ;
struct TYPE_2__ {unsigned long s_addr; } ;
struct conn_target {int port; int * type; TYPE_1__ target; } ;
typedef int conn_type_t ;


 struct conn_target** HTarget ;
 unsigned long PRIME_TARGETS ;
 int assert (unsigned long) ;

struct conn_target **find_target (struct in_addr ad, int port, conn_type_t *type) {
  assert (ad.s_addr);
  unsigned h1 = ((unsigned long) type * 0xabacaba + ad.s_addr) % PRIME_TARGETS;
  unsigned h2 = ((unsigned long) type * 0xdabacab + ad.s_addr) % (PRIME_TARGETS - 1);
  h1 = (h1 * 239 + port) % PRIME_TARGETS;
  h2 = (h2 * 17 + port) % (PRIME_TARGETS - 1) + 1;
  while (HTarget[h1]) {
    if (HTarget[h1]->target.s_addr == ad.s_addr &&
        HTarget[h1]->port == port &&
 HTarget[h1]->type == type) {
      return HTarget + h1;
    }
    if ((h1 += h2) >= PRIME_TARGETS) {
      h1 -= PRIME_TARGETS;
    }
  }
  return HTarget + h1;
}
