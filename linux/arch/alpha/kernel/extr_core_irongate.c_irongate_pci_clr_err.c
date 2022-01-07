
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int stat_cmd; } ;


 TYPE_1__* IRONGATE0 ;
 unsigned int* IronECC ;
 unsigned int inb (int) ;
 int mb () ;
 int outb (unsigned int,int) ;
 int printk (char*,unsigned int) ;

int
irongate_pci_clr_err(void)
{
 unsigned int nmi_ctl=0;
 unsigned int IRONGATE_jd;

again:
 IRONGATE_jd = IRONGATE0->stat_cmd;
 printk("Iron stat_cmd %x\n", IRONGATE_jd);
 IRONGATE0->stat_cmd = IRONGATE_jd;
 mb();
 IRONGATE_jd = IRONGATE0->stat_cmd;

 IRONGATE_jd = *IronECC;
 printk("Iron ECC %x\n", IRONGATE_jd);
 *IronECC = IRONGATE_jd;
 mb();
 IRONGATE_jd = *IronECC;


        nmi_ctl = inb(0x61);
        nmi_ctl |= 0x0c;
        outb(nmi_ctl, 0x61);
        nmi_ctl &= ~0x0c;
        outb(nmi_ctl, 0x61);

 IRONGATE_jd = *IronECC;
 if (IRONGATE_jd & 0x300) goto again;

 return 0;
}
