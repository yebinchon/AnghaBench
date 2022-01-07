
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__* c6x_fuse_mac ;
 unsigned int c6x_num_cores ;
 scalar_t__* cmdline_mac ;
 int eth_random_addr (scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

int soc_mac_addr(unsigned int index, u8 *addr)
{
 int i, have_dt_mac = 0, have_cmdline_mac = 0, have_fuse_mac = 0;

 for (i = 0; i < 6; i++) {
  if (cmdline_mac[i])
   have_cmdline_mac = 1;
  if (c6x_fuse_mac[i])
   have_fuse_mac = 1;
  if (addr[i])
   have_dt_mac = 1;
 }


 if (have_cmdline_mac)
  memcpy(addr, cmdline_mac, 6);
 else if (!have_dt_mac) {
  if (have_fuse_mac)
   memcpy(addr, c6x_fuse_mac, 6);
  else
   eth_random_addr(addr);
 }


 addr[5] += index * c6x_num_cores;
 return 1;
}
