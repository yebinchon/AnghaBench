
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {scalar_t__ regs; } ;



__attribute__((used)) static inline u32 kvm_lapic_get_reg(struct kvm_lapic *apic, int reg_off)
{
 return *((u32 *) (apic->regs + reg_off));
}
