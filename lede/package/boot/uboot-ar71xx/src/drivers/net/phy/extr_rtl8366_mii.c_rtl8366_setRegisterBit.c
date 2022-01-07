
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 scalar_t__ rtl8366_readRegister (int,int*) ;
 scalar_t__ rtl8366_writeRegister (int,int) ;

__attribute__((used)) static int rtl8366_setRegisterBit(uint32_t reg, uint32_t bitNum, uint32_t value)
{
    uint16_t regData;

    if (bitNum >= 16)
        return -1;

    if (rtl8366_readRegister(reg, &regData))
        return -1;

    if (value)
        regData |= (1 << bitNum);
    else
        regData &= ~(1 << bitNum);

    if (rtl8366_writeRegister(reg, regData))
        return -1;

    return 0;
}
