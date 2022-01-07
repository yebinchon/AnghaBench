
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int PCI_EHCI_FLADJ_REG ;
 int USB_CONFIG ;
 int USB_MSR_REG (int ) ;
 int _rdmsr (int ,int *,int *) ;
 int _wrmsr (int ,int,int ) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;

__attribute__((used)) static void loongson_cs5536_ehci_fixup(struct pci_dev *pdev)
{
 u32 hi, lo;


 _rdmsr(USB_MSR_REG(USB_CONFIG), &hi, &lo);
 _wrmsr(USB_MSR_REG(USB_CONFIG), (1 << 1) | (1 << 3), lo);


 pci_write_config_dword(pdev, PCI_EHCI_FLADJ_REG, 0x2000);
}
