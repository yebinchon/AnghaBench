
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {int irr_pending; } ;


 int ASSERT (int) ;
 int apic_search_irr (struct kvm_lapic*) ;

__attribute__((used)) static inline int apic_find_highest_irr(struct kvm_lapic *apic)
{
 int result;





 if (!apic->irr_pending)
  return -1;

 result = apic_search_irr(apic);
 ASSERT(result == -1 || result >= 16);

 return result;
}
