
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* kvm_ops; int rtas_token_lock; int rtas_tokens; int spapr_tce_tables; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_3__ {int (* init_vm ) (struct kvm*) ;} ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_LIST_HEAD_RCU (int *) ;
 int mutex_init (int *) ;
 int stub1 (struct kvm*) ;

int kvmppc_core_init_vm(struct kvm *kvm)
{







 return kvm->arch.kvm_ops->init_vm(kvm);
}
