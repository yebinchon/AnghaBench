
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_channel {TYPE_1__* resources; } ;
struct TYPE_2__ {int start; } ;


 int BUG_ON (int) ;
 int PCIC_WRITE (int ,int) ;
 unsigned long PCIMCR_MRSET_OFF ;
 unsigned long PCIMCR_RFSH_OFF ;
 scalar_t__ SH7751_BCR1 ;
 scalar_t__ SH7751_BCR2 ;
 scalar_t__ SH7751_MCR ;
 int SH7751_PCIAINTM ;
 int SH7751_PCIBCR1 ;
 int SH7751_PCIBCR2 ;
 int SH7751_PCICONF1 ;
 int SH7751_PCICONF11 ;
 int SH7751_PCICONF2 ;
 int SH7751_PCICONF4 ;
 int SH7751_PCICONF5 ;
 int SH7751_PCICONF6 ;
 int SH7751_PCICR ;
 int SH7751_PCIINTM ;
 int SH7751_PCIIOBR ;
 int SH7751_PCIIOBR_MASK ;
 int SH7751_PCILAR0 ;
 int SH7751_PCILAR1 ;
 int SH7751_PCILSR0 ;
 int SH7751_PCILSR1 ;
 int SH7751_PCIMBR ;
 int SH7751_PCIMCR ;
 int SH7751_PCIWCR1 ;
 int SH7751_PCIWCR2 ;
 int SH7751_PCIWCR3 ;
 int SH7751_PCI_MEMORY_BASE ;
 scalar_t__ SH7751_WCR1 ;
 scalar_t__ SH7751_WCR2 ;
 scalar_t__ SH7751_WCR3 ;
 int printk (char*) ;

int pci_fixup_pcic(struct pci_channel *chan)
{
 unsigned long bcr1, wcr1, wcr2, wcr3, mcr;
 unsigned short bcr2;
 bcr1 = (*(volatile unsigned long*)(SH7751_BCR1));
 bcr2 = (*(volatile unsigned short*)(SH7751_BCR2));
 wcr1 = (*(volatile unsigned long*)(SH7751_WCR1));
 wcr2 = (*(volatile unsigned long*)(SH7751_WCR2));
 wcr3 = (*(volatile unsigned long*)(SH7751_WCR3));
 mcr = (*(volatile unsigned long*)(SH7751_MCR));

 bcr1 = bcr1 | 0x00080000;
 (*(volatile unsigned long*)(SH7751_BCR1)) = bcr1;

 bcr1 = bcr1 | 0x40080000;
 PCIC_WRITE(SH7751_PCIBCR1, bcr1);
 PCIC_WRITE(SH7751_PCIBCR2, bcr2);
 PCIC_WRITE(SH7751_PCIWCR1, wcr1);
 PCIC_WRITE(SH7751_PCIWCR2, wcr2);
 PCIC_WRITE(SH7751_PCIWCR3, wcr3);
 mcr = (mcr & PCIMCR_MRSET_OFF) & PCIMCR_RFSH_OFF;
 PCIC_WRITE(SH7751_PCIMCR, mcr);



 PCIC_WRITE(SH7751_PCIINTM, 0x0000c3ff);
 PCIC_WRITE(SH7751_PCIAINTM, 0x0000380f);


 PCIC_WRITE(SH7751_PCICONF1, 0xF39000C7);
 PCIC_WRITE(SH7751_PCICONF2, 0x00000000);
 PCIC_WRITE(SH7751_PCICONF4, 0xab000001);
 PCIC_WRITE(SH7751_PCICONF5, 0x0c000000);
 PCIC_WRITE(SH7751_PCICONF6, 0xd0000000);
 PCIC_WRITE(SH7751_PCICONF11, 0x35051054);
 PCIC_WRITE(SH7751_PCILSR0, 0x03f00000);
 PCIC_WRITE(SH7751_PCILSR1, 0x00000000);
 PCIC_WRITE(SH7751_PCILAR0, 0x0c000000);
 PCIC_WRITE(SH7751_PCILAR1, 0x00000000);


 PCIC_WRITE(SH7751_PCICR, 0xa5000001);
 BUG_ON(chan->resources[1].start != SH7751_PCI_MEMORY_BASE);

 PCIC_WRITE(SH7751_PCIMBR, chan->resources[1].start);


 PCIC_WRITE(SH7751_PCIIOBR, (chan->resources[0].start & SH7751_PCIIOBR_MASK));


 printk("SH7751 PCI: Finished initialization of the PCI controller\n");

 return 1;
}
