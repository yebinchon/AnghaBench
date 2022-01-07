
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef int u64 ;
struct TYPE_4__ {int ioapic_handled_vectors; int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_6__ {int (* load_eoi_exitmap ) (struct kvm_vcpu*,int *) ;} ;
struct TYPE_5__ {int vec_bitmap; } ;


 int bitmap_or (int *,int ,int ,int) ;
 int kvm_apic_hw_enabled (int ) ;
 TYPE_3__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int *) ;
 TYPE_2__* vcpu_to_synic (struct kvm_vcpu*) ;

__attribute__((used)) static void vcpu_load_eoi_exitmap(struct kvm_vcpu *vcpu)
{
 u64 eoi_exit_bitmap[4];

 if (!kvm_apic_hw_enabled(vcpu->arch.apic))
  return;

 bitmap_or((ulong *)eoi_exit_bitmap, vcpu->arch.ioapic_handled_vectors,
    vcpu_to_synic(vcpu)->vec_bitmap, 256);
 kvm_x86_ops->load_eoi_exitmap(vcpu, eoi_exit_bitmap);
}
