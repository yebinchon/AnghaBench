
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int x86; int x86_vendor; int x86_vendor_id; } ;


 int CX86_CCR3 ;
 int CX86_CCR4 ;
 int X86_VENDOR_CYRIX ;
 int do_cyrix_devid (unsigned char*,unsigned char*) ;
 int getCx86 (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_info (char*) ;
 int setCx86 (int ,unsigned char) ;
 int strcpy (int ,char*) ;
 scalar_t__ test_cyrix_52div () ;

__attribute__((used)) static void cyrix_identify(struct cpuinfo_x86 *c)
{

 if (c->x86 == 4 && test_cyrix_52div()) {
  unsigned char dir0, dir1;

  strcpy(c->x86_vendor_id, "CyrixInstead");
  c->x86_vendor = X86_VENDOR_CYRIX;





  do_cyrix_devid(&dir0, &dir1);

  dir0 >>= 4;



  if (dir0 == 5 || dir0 == 3) {
   unsigned char ccr3;
   unsigned long flags;
   pr_info("Enabling CPUID on Cyrix processor.\n");
   local_irq_save(flags);
   ccr3 = getCx86(CX86_CCR3);

   setCx86(CX86_CCR3, (ccr3 & 0x0f) | 0x10);

   setCx86(CX86_CCR4, getCx86(CX86_CCR4) | 0x80);

   setCx86(CX86_CCR3, ccr3);
   local_irq_restore(flags);
  }
 }
}
