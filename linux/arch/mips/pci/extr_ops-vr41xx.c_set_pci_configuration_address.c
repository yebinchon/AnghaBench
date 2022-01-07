
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;
 int PCICONFAREG ;
 int PCI_FUNC (unsigned int) ;
 unsigned int PCI_SLOT (unsigned int) ;
 int writel (int,int ) ;

__attribute__((used)) static inline int set_pci_configuration_address(unsigned char number,
      unsigned int devfn, int where)
{
 if (number == 0) {



  if (PCI_SLOT(devfn) < 11 || where > 0xff)
   return -EINVAL;

  writel((1U << PCI_SLOT(devfn)) | (PCI_FUNC(devfn) << 8) |
         (where & 0xfc), PCICONFAREG);
 } else {



  if (where > 0xff)
   return -EINVAL;

  writel(((uint32_t)number << 16) | ((devfn & 0xff) << 8) |
         (where & 0xfc) | 1U, PCICONFAREG);
 }

 return 0;
}
