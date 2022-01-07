
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int DBG (char*,int ,int ) ;
 int printf (char*) ;
 scalar_t__ smi_write (int ,int ) ;

__attribute__((used)) static int rtl8366_writeRegister(uint32_t reg, uint16_t data)
{
    DBG("rtl8366: write register=%#04x, data=%#04x\n", reg, data);

    if (smi_write(reg, data)) {
        printf("rtl8366 smi write failed!\n");
        return -1;
    }

    return 0;
}
