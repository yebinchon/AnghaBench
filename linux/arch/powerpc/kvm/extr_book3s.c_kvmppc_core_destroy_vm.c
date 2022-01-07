
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * xics_on_xive; int * native; } ;
struct TYPE_5__ {TYPE_3__ xive_devices; int spapr_tce_tables; TYPE_1__* kvm_ops; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_4__ {int (* destroy_vm ) (struct kvm*) ;} ;


 int WARN_ON (int) ;
 int kfree (int *) ;
 int kvmppc_rtas_tokens_free (struct kvm*) ;
 int list_empty (int *) ;
 int stub1 (struct kvm*) ;

void kvmppc_core_destroy_vm(struct kvm *kvm)
{
 kvm->arch.kvm_ops->destroy_vm(kvm);
}
