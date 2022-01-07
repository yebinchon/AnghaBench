
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {scalar_t__ mode; int cpu; } ;
struct TYPE_2__ {int (* send_IPI_mask ) (int ,int) ;} ;


 scalar_t__ IN_GUEST_MODE ;
 int POSTED_INTR_NESTED_VECTOR ;
 int POSTED_INTR_VECTOR ;
 TYPE_1__* apic ;
 int get_cpu_mask (int ) ;
 int stub1 (int ,int) ;

__attribute__((used)) static inline bool kvm_vcpu_trigger_posted_interrupt(struct kvm_vcpu *vcpu,
           bool nested)
{
 return 0;
}
