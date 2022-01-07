
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int vcpu; } ;


 int MAS5_SGS ;
 int SPRN_MAS5 ;
 int get_lpid (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mtspr (int ,int) ;

void kvmppc_e500_tlbil_all(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 unsigned long flags;

 local_irq_save(flags);
 mtspr(SPRN_MAS5, MAS5_SGS | get_lpid(&vcpu_e500->vcpu));
 asm volatile("tlbilxlpid");
 mtspr(SPRN_MAS5, 0);
 local_irq_restore(flags);
}
