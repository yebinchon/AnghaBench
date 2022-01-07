
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIOS_CALL_ETH_NODE_ADDR ;
 int sh_bios_call (int ,int ,long,int ,int ) ;

void sh_bios_get_node_addr(unsigned char *node_addr)
{
 sh_bios_call(BIOS_CALL_ETH_NODE_ADDR, 0, (long)node_addr, 0, 0);
}
