
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long* vulp ;
typedef unsigned int* vuip ;


 scalar_t__ LCA_IOC_STAT0 ;
 unsigned long LCA_IOC_STAT0_CODE_MASK ;
 unsigned long LCA_IOC_STAT0_CODE_SHIFT ;
 unsigned long LCA_IOC_STAT0_ERR ;
 int draina () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int printk (char*,unsigned long) ;
 int wrmces (int) ;

__attribute__((used)) static void
conf_write(unsigned long addr, unsigned int value)
{
 unsigned long flags, code, stat0;

 local_irq_save(flags);


 stat0 = *(vulp)LCA_IOC_STAT0;
 *(vulp)LCA_IOC_STAT0 = stat0;
 mb();


 *(vuip)addr = value;
 draina();

 stat0 = *(vulp)LCA_IOC_STAT0;
 if (stat0 & LCA_IOC_STAT0_ERR) {
  code = ((stat0 >> LCA_IOC_STAT0_CODE_SHIFT)
   & LCA_IOC_STAT0_CODE_MASK);
  if (code != 1) {
   printk("lca.c:conf_write: got stat0=%lx\n", stat0);
  }


  *(vulp)LCA_IOC_STAT0 = stat0;
  mb();


  wrmces(0x7);
 }
 local_irq_restore(flags);
}
