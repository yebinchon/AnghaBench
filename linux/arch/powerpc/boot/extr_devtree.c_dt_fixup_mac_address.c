
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int index ;


 void* find_node_by_prop_value (int *,char*,void*,int) ;
 int printf (char*,int,int const,int const,int const,int const,int const,int const) ;
 int setprop (void*,char*,int const*,int) ;

void dt_fixup_mac_address(u32 index, const u8 *addr)
{
 void *devp = find_node_by_prop_value(((void*)0), "linux,network-index",
                                      (void*)&index, sizeof(index));

 if (devp) {
  printf("ENET%d: local-mac-address <-"
         " %02x:%02x:%02x:%02x:%02x:%02x\n\r", index,
         addr[0], addr[1], addr[2],
         addr[3], addr[4], addr[5]);

  setprop(devp, "local-mac-address", addr, 6);
 }
}
