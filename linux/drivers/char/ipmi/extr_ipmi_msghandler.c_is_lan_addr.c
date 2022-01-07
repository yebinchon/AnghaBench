
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_addr {scalar_t__ addr_type; } ;


 scalar_t__ IPMI_LAN_ADDR_TYPE ;

__attribute__((used)) static int is_lan_addr(struct ipmi_addr *addr)
{
 return addr->addr_type == IPMI_LAN_ADDR_TYPE;
}
