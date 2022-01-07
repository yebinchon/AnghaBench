
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* iwdp_iport_t ;
struct TYPE_2__ {scalar_t__ port; } ;



int iwdp_iport_cmp(const void *a, const void *b) {
  const iwdp_iport_t ipa = *((iwdp_iport_t *)a);
  const iwdp_iport_t ipb = *((iwdp_iport_t *)b);
  if (ipa == ipb || !ipa || !ipb) {
    return (ipa == ipb ? 0 : ipa ? -1 : 1);
  }
  uint32_t pa = ipa->port;
  uint32_t pb = ipb->port;
  return (pa == pb ? 0 : pa < pb ? -1 : 1);
}
