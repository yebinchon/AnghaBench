
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_link {TYPE_2__* ap; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int dev; } ;


 unsigned int get_scr_cfg_addr (TYPE_2__*,unsigned int) ;
 int pci_read_config_dword (struct pci_dev*,unsigned int,int *) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u32 uli_scr_cfg_read(struct ata_link *link, unsigned int sc_reg)
{
 struct pci_dev *pdev = to_pci_dev(link->ap->host->dev);
 unsigned int cfg_addr = get_scr_cfg_addr(link->ap, sc_reg);
 u32 val;

 pci_read_config_dword(pdev, cfg_addr, &val);
 return val;
}
