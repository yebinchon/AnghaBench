
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RTL8366S_GREEN_FEATURE_REG ;
 int RTL8366S_GREEN_FEATURE_RX_BIT ;
 int RTL8366S_GREEN_FEATURE_TX_BIT ;
 scalar_t__ rtl8366_setRegisterBit (int ,int ,int ) ;

int rtl8366s_setGreenFeature(uint32_t tx, uint32_t rx)
{
    if (rtl8366_setRegisterBit(RTL8366S_GREEN_FEATURE_REG,
                               RTL8366S_GREEN_FEATURE_TX_BIT, tx))
        return -1;

    if (rtl8366_setRegisterBit(RTL8366S_GREEN_FEATURE_REG,
                               RTL8366S_GREEN_FEATURE_RX_BIT, rx))
        return -1;

    return 0;
}
