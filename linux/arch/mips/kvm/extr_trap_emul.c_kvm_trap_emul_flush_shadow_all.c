
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_flush_remote_tlbs (struct kvm*) ;

__attribute__((used)) static void kvm_trap_emul_flush_shadow_all(struct kvm *kvm)
{

 kvm_flush_remote_tlbs(kvm);
}
