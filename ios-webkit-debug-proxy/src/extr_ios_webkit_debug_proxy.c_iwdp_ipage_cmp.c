
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef TYPE_1__* iwdp_ipage_t ;
struct TYPE_2__ {scalar_t__ page_num; } ;



int iwdp_ipage_cmp(const void *a, const void *b) {
  const iwdp_ipage_t ipa = *((iwdp_ipage_t *)a);
  const iwdp_ipage_t ipb = *((iwdp_ipage_t *)b);
  if (ipa == ipb || !ipa || !ipb) {
    return (ipa == ipb ? 0 : ipa ? -1 : 1);
  }
  uint32_t pna = ipa->page_num;
  uint32_t pnb = ipb->page_num;
  return (pna == pnb ? 0 : pna < pnb ? -1 : 1);
}
