
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct atm_dev {int dummy; } ;
struct TYPE_3__ {int pci; scalar_t__ reg; } ;
typedef TYPE_1__ IADEV ;


 TYPE_1__* INPH_IA_DEV (struct atm_dev*) ;
 scalar_t__ IPHASE5575_EXT_RESET ;
 int PCIBIOS_SUCCESSFUL ;
 int pci_read_config_dword (int ,int,unsigned int*) ;
 int pci_write_config_dword (int ,int,unsigned int) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int reset_sar(struct atm_dev *dev)
{
 IADEV *iadev;
 int i, error = 1;
 unsigned int pci[64];

 iadev = INPH_IA_DEV(dev);
 for(i=0; i<64; i++)
   if ((error = pci_read_config_dword(iadev->pci,
    i*4, &pci[i])) != PCIBIOS_SUCCESSFUL)
         return error;
 writel(0, iadev->reg+IPHASE5575_EXT_RESET);
 for(i=0; i<64; i++)
   if ((error = pci_write_config_dword(iadev->pci,
     i*4, pci[i])) != PCIBIOS_SUCCESSFUL)
     return error;
 udelay(5);
 return 0;
}
