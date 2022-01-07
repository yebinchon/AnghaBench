
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conn_to_evt; int hv_lock; } ;
struct TYPE_4__ {TYPE_1__ hyperv; } ;
struct kvm {TYPE_2__ arch; } ;


 int idr_init (int *) ;
 int mutex_init (int *) ;

void kvm_hv_init_vm(struct kvm *kvm)
{
 mutex_init(&kvm->arch.hyperv.hv_lock);
 idr_init(&kvm->arch.hyperv.conn_to_evt);
}
