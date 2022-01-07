
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ioport2; int dev; scalar_t__ bits; scalar_t__ ioport1; } ;


 int SONYPI_G10A ;
 int SONYPI_IRQ_PORT ;
 int SONYPI_IRQ_SHIFT ;
 int inl (int ) ;
 int outl (int,int ) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;
 TYPE_1__ sonypi_device ;

__attribute__((used)) static void sonypi_type1_srs(void)
{
 u32 v;

 pci_read_config_dword(sonypi_device.dev, SONYPI_G10A, &v);
 v = (v & 0xFFFF0000) | ((u32) sonypi_device.ioport1);
 pci_write_config_dword(sonypi_device.dev, SONYPI_G10A, v);

 pci_read_config_dword(sonypi_device.dev, SONYPI_G10A, &v);
 v = (v & 0xFFF0FFFF) |
     (((u32) sonypi_device.ioport1 ^ sonypi_device.ioport2) << 16);
 pci_write_config_dword(sonypi_device.dev, SONYPI_G10A, v);

 v = inl(SONYPI_IRQ_PORT);
 v &= ~(((u32) 0x3) << SONYPI_IRQ_SHIFT);
 v |= (((u32) sonypi_device.bits) << SONYPI_IRQ_SHIFT);
 outl(v, SONYPI_IRQ_PORT);

 pci_read_config_dword(sonypi_device.dev, SONYPI_G10A, &v);
 v = (v & 0xFF1FFFFF) | 0x00C00000;
 pci_write_config_dword(sonypi_device.dev, SONYPI_G10A, v);
}
