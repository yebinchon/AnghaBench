
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv6_addr {scalar_t__* addr; } ;



__attribute__((used)) static inline int sfe_ipv6_addr_equal(struct sfe_ipv6_addr *a,
          struct sfe_ipv6_addr *b)
{
 return a->addr[0] == b->addr[0] &&
        a->addr[1] == b->addr[1] &&
        a->addr[2] == b->addr[2] &&
        a->addr[3] == b->addr[3];
}
