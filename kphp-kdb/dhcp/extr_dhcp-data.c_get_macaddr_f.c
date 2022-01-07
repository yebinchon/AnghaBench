
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long long macaddr; struct TYPE_5__* hnext; } ;
typedef TYPE_1__ dhcp_map_macaddr_ip_en_t ;


 unsigned long long DHCP_HASH_PRIME ;
 TYPE_1__** HMI ;
 int assert (int) ;
 int tot_macaddrs ;
 TYPE_1__* zmalloc0 (int) ;

__attribute__((used)) static dhcp_map_macaddr_ip_en_t *get_macaddr_f (long long macaddr, int force) {
  int h = ((unsigned long long) macaddr) % DHCP_HASH_PRIME;
  assert (h >= 0 && h < DHCP_HASH_PRIME);
  dhcp_map_macaddr_ip_en_t **p = HMI + h, *V;
  while (*p) {
    V = *p;
    if (macaddr == V->macaddr) {
      *p = V->hnext;
      if (force >= 0) {
        V->hnext = HMI[h];
        HMI[h] = V;
      }
      return V;
    }
    p = &V->hnext;
  }
  if (force > 0) {
    tot_macaddrs++;
    V = zmalloc0 (sizeof (dhcp_map_macaddr_ip_en_t));
    V->macaddr = macaddr;
    V->hnext = HMI[h];
    return HMI[h] = V;
  }
  return ((void*)0);
}
