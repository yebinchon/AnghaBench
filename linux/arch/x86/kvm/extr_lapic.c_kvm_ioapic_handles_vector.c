
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_lapic {TYPE_2__* vcpu; } ;
struct TYPE_3__ {int ioapic_handled_vectors; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int test_bit (int,int ) ;

__attribute__((used)) static bool kvm_ioapic_handles_vector(struct kvm_lapic *apic, int vector)
{
 return test_bit(vector, apic->vcpu->arch.ioapic_handled_vectors);
}
