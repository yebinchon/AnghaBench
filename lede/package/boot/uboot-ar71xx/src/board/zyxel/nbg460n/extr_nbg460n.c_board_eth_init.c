
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int bd_t ;


 char* RTL8366_DEVNAME ;
 int RTL8366_LANPHY_ID ;
 int RTL8366_WANPHY_ID ;
 scalar_t__ ag71xx_register (int *,char**,int*,int*) ;
 scalar_t__ rtl8366_mii_register (int *) ;
 scalar_t__ rtl8366s_initialize () ;

int board_eth_init(bd_t *bis)
{
    char *phynames[] = {RTL8366_DEVNAME, RTL8366_DEVNAME};
    u16 phyids[] = {RTL8366_LANPHY_ID, RTL8366_WANPHY_ID};
    u16 phyfixed[] = {1, 0};

    if (ag71xx_register(bis, phynames, phyids, phyfixed) <= 0)
        return -1;

 if (rtl8366s_initialize())
        return -1;

    if (rtl8366_mii_register(bis))
        return -1;

    return 0;
}
