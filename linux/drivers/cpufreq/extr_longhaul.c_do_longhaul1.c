
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ESOFTBF; unsigned int CLOCKMUL; } ;
union msr_bcr2 {int val; TYPE_1__ bits; } ;


 int ACPI_FLUSH_CPU_CACHE () ;
 int MSR_VIA_BCR2 ;
 int halt () ;
 int local_irq_disable () ;
 int rdmsrl (int ,int ) ;
 int safe_halt () ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void do_longhaul1(unsigned int mults_index)
{
 union msr_bcr2 bcr2;

 rdmsrl(MSR_VIA_BCR2, bcr2.val);

 bcr2.bits.ESOFTBF = 1;
 bcr2.bits.CLOCKMUL = mults_index & 0xff;


 safe_halt();

 wrmsrl(MSR_VIA_BCR2, bcr2.val);

 ACPI_FLUSH_CPU_CACHE();
 halt();


 local_irq_disable();
 rdmsrl(MSR_VIA_BCR2, bcr2.val);
 bcr2.bits.ESOFTBF = 0;
 wrmsrl(MSR_VIA_BCR2, bcr2.val);
}
