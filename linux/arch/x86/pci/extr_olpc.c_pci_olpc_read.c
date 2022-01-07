
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int (* read ) (unsigned int,unsigned int,unsigned int,int,int,int *) ;} ;


 int BUG () ;
 int WARN_ON (unsigned int) ;
 int ac97_hdr ;
 int aes_hdr ;
 int ehci_hdr ;
 int ff_loc ;
 int gxfb_hdr ;
 int gxnb_hdr ;
 int * hdr_addr (int ,int) ;
 int is_lx ;
 int is_simulated (unsigned int,unsigned int) ;
 int isa_hdr ;
 int lxfb_hdr ;
 int lxnb_hdr ;
 int ohci_hdr ;
 TYPE_1__ pci_direct_conf1 ;
 int stub1 (unsigned int,unsigned int,unsigned int,int,int,int *) ;
 int zero_loc ;

__attribute__((used)) static int pci_olpc_read(unsigned int seg, unsigned int bus,
  unsigned int devfn, int reg, int len, uint32_t *value)
{
 uint32_t *addr;

 WARN_ON(seg);


 if (!is_simulated(bus, devfn))
  return pci_direct_conf1.read(seg, bus, devfn, reg, len, value);





 if (reg >= 0x70)
  addr = &zero_loc;
 else {
  switch (devfn) {
  case 0x8:
   addr = hdr_addr(is_lx ? lxnb_hdr : gxnb_hdr, reg);
   break;
  case 0x9:
   addr = hdr_addr(is_lx ? lxfb_hdr : gxfb_hdr, reg);
   break;
  case 0xa:
   addr = is_lx ? hdr_addr(aes_hdr, reg) : &ff_loc;
   break;
  case 0x78:
   addr = hdr_addr(isa_hdr, reg);
   break;
  case 0x7b:
   addr = hdr_addr(ac97_hdr, reg);
   break;
  case 0x7c:
   addr = hdr_addr(ohci_hdr, reg);
   break;
  case 0x7d:
   addr = hdr_addr(ehci_hdr, reg);
   break;
  default:
   addr = &ff_loc;
   break;
  }
 }
 switch (len) {
 case 1:
  *value = *(uint8_t *)addr;
  break;
 case 2:
  *value = *(uint16_t *)addr;
  break;
 case 4:
  *value = *addr;
  break;
 default:
  BUG();
 }

 return 0;
}
