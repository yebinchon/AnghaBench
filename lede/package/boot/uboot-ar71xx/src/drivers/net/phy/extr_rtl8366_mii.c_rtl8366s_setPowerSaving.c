
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;


 scalar_t__ RTL8366S_PHY_NO_MAX ;
 scalar_t__ rtl8366_getPhyReg (scalar_t__,int,int*) ;
 scalar_t__ rtl8366_setPhyReg (scalar_t__,int,int) ;

int rtl8366s_setPowerSaving(uint32_t phyNum, uint32_t enabled)
{
    uint16_t regData;

    if (phyNum > RTL8366S_PHY_NO_MAX)
        return -1;

    if (rtl8366_getPhyReg(phyNum, 12, &regData))
        return -1;

    if (enabled)
        regData |= (1 << 12);
    else
        regData &= ~(1 << 12);

    if (rtl8366_setPhyReg(phyNum, 12, regData))
        return -1;

    return 0;
}
