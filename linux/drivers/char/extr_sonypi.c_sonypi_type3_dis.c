
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int SONYPI_TYPE3_GID2 ;
 int pci_write_config_word (int ,int ,int ) ;
 TYPE_1__ sonypi_device ;
 int sonypi_type2_dis () ;
 int udelay (int) ;

__attribute__((used)) static void sonypi_type3_dis(void)
{
 sonypi_type2_dis();
 udelay(10);
 pci_write_config_word(sonypi_device.dev, SONYPI_TYPE3_GID2, 0);
}
