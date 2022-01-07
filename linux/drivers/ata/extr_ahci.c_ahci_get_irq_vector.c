
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_host {int dev; } ;


 int pci_irq_vector (int ,int) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static int ahci_get_irq_vector(struct ata_host *host, int port)
{
 return pci_irq_vector(to_pci_dev(host->dev), port);
}
