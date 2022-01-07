
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct ata_host {int dev; scalar_t__ private_data; } ;


 int pci_write_config_dword (int ,int,unsigned long) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static void nv_host_stop(struct ata_host *host)
{
 u32 udma = (unsigned long)host->private_data;


 pci_write_config_dword(to_pci_dev(host->dev), 0x60, udma);
}
