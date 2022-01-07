
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int DBG (char*,...) ;
 int RTL8366S_CHIP_ID_REG ;
 int printf (char*) ;
 int rtl8366_readRegister (int ,int*) ;
 scalar_t__ rtl8366s_initChip () ;
 scalar_t__ rtl8366s_setCPUPort (int,int,int ) ;
 scalar_t__ rtl8366s_setGreenEthernet (int,int) ;
 int smi_init () ;

int rtl8366s_initialize(void)
{
 uint16_t regData;

    DBG("rtl8366s_initialize: start setup\n");

    smi_init();

 rtl8366_readRegister(RTL8366S_CHIP_ID_REG, &regData);
 DBG("Realtek 8366SR switch ID %#04x\n", regData);

 if (regData != 0x8366) {
  printf("rtl8366s_initialize: found unsupported switch\n");
  return -1;
 }

    if (rtl8366s_initChip()) {
        printf("rtl8366s_initialize: init chip failed\n");
        return -1;
    }

 if (rtl8366s_setGreenEthernet(1, 1)) {
       printf("rtl8366s_initialize: set green ethernet failed\n");
       return -1;
   }


 if (rtl8366s_setCPUPort(5, 1, 0)) {
  printf("rtl8366s_initialize: set CPU port failed\n");
  return -1;
 }

    return 0;
}
