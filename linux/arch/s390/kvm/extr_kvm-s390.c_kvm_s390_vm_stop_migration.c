
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ use_cmma; scalar_t__ migration_mode; } ;
struct kvm {TYPE_1__ arch; } ;


 int KVM_REQ_STOP_MIGRATION ;
 int kvm_s390_sync_request_broadcast (struct kvm*,int ) ;

__attribute__((used)) static int kvm_s390_vm_stop_migration(struct kvm *kvm)
{

 if (!kvm->arch.migration_mode)
  return 0;
 kvm->arch.migration_mode = 0;
 if (kvm->arch.use_cmma)
  kvm_s390_sync_request_broadcast(kvm, KVM_REQ_STOP_MIGRATION);
 return 0;
}
