
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int ioport1; int dev; } ;


 int SONYPI_TYPE3_GID2 ;
 int SONYPI_TYPE3_MISC ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int) ;
 int pci_write_config_word (int ,int ,int) ;
 TYPE_1__ sonypi_device ;
 int sonypi_type2_srs () ;

__attribute__((used)) static void sonypi_type3_srs(void)
{
 u16 v16;
 u8 v8;



 sonypi_type2_srs();


 v16 = (sonypi_device.ioport1 & 0xFFF0) | 0x01;
 pci_write_config_word(sonypi_device.dev, SONYPI_TYPE3_GID2, v16);
 pci_read_config_byte(sonypi_device.dev, SONYPI_TYPE3_MISC, &v8);
 v8 = (v8 & 0xCF) | 0x10;
 pci_write_config_byte(sonypi_device.dev, SONYPI_TYPE3_MISC, v8);
}
