
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;


 int inl (unsigned long) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 int pr_warn (char*) ;
 int udelay (int) ;

__attribute__((used)) static int hpt3x2n_pci_clock(struct pci_dev *pdev)
{
 unsigned long freq;
 u32 fcnt;
 unsigned long iobase = pci_resource_start(pdev, 4);

 fcnt = inl(iobase + 0x90);
 if ((fcnt >> 12) != 0xABCDE) {
  int i;
  u16 sr;
  u32 total = 0;

  pr_warn("BIOS clock data not set\n");


  for (i = 0; i < 128; i++) {
   pci_read_config_word(pdev, 0x78, &sr);
   total += sr & 0x1FF;
   udelay(15);
  }
  fcnt = total / 128;
 }
 fcnt &= 0x1FF;

 freq = (fcnt * 77) / 192;


 if (freq < 40)
  return 33;
 if (freq < 45)
  return 40;
 if (freq < 55)
  return 50;
 return 66;
}
