
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 void* find_node_by_alias (char const*) ;
 int printf (char*,char const*,int const,int const,int const,int const,int const,int const) ;
 int setprop (void*,char*,int const*,int) ;

void dt_fixup_mac_address_by_alias(const char *alias, const u8 *addr)
{
 void *devp = find_node_by_alias(alias);

 if (devp) {
  printf("%s: local-mac-address <-"
         " %02x:%02x:%02x:%02x:%02x:%02x\n\r", alias,
         addr[0], addr[1], addr[2],
         addr[3], addr[4], addr[5]);

  setprop(devp, "local-mac-address", addr, 6);
 }
}
