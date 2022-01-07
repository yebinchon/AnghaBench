
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPET_ADDR ;
 int SMBUS_PCI_REG40 ;
 int SMBUS_PCI_REG64 ;
 int SMBUS_PCI_REGB4 ;
 int hpet_enable_legacy_int () ;
 int smbus_enable (int ,int) ;
 int smbus_write (int ,int ) ;

__attribute__((used)) static void hpet_setup(void)
{

 smbus_write(SMBUS_PCI_REGB4, HPET_ADDR);


 smbus_enable(SMBUS_PCI_REG40, (1 << 28));


 smbus_enable(SMBUS_PCI_REG64, (1 << 10));

 hpet_enable_legacy_int();
}
