
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ip6; int ip; } ;
typedef TYPE_1__ sfe_ip_addr_t ;


 int sfe_ipv4_addr_equal (int ,int ) ;
 int sfe_ipv6_addr_equal (int ,int ) ;

__attribute__((used)) static inline int sfe_addr_equal(sfe_ip_addr_t *a,
     sfe_ip_addr_t *b, int is_v4)
{
 return is_v4 ? sfe_ipv4_addr_equal(a->ip, b->ip) : sfe_ipv6_addr_equal(a->ip6, b->ip6);
}
