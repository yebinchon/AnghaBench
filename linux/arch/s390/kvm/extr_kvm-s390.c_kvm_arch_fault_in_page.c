
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gmap; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gpa_t ;


 int FAULT_FLAG_WRITE ;
 long gmap_fault (int ,int ,int ) ;

long kvm_arch_fault_in_page(struct kvm_vcpu *vcpu, gpa_t gpa, int writable)
{
 return gmap_fault(vcpu->arch.gmap, gpa,
     writable ? FAULT_FLAG_WRITE : 0);
}
