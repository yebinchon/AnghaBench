
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcore {int first_vcpuid; int preempt_list; struct kvm* kvm; int lpcr; int preempt_tb; int wq; int stoltb_lock; int lock; } ;
struct TYPE_2__ {int lpcr; } ;
struct kvm {TYPE_1__ arch; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TB_NIL ;
 int init_swait_queue_head (int *) ;
 struct kvmppc_vcore* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct kvmppc_vcore *kvmppc_vcore_create(struct kvm *kvm, int id)
{
 struct kvmppc_vcore *vcore;

 vcore = kzalloc(sizeof(struct kvmppc_vcore), GFP_KERNEL);

 if (vcore == ((void*)0))
  return ((void*)0);

 spin_lock_init(&vcore->lock);
 spin_lock_init(&vcore->stoltb_lock);
 init_swait_queue_head(&vcore->wq);
 vcore->preempt_tb = TB_NIL;
 vcore->lpcr = kvm->arch.lpcr;
 vcore->first_vcpuid = id;
 vcore->kvm = kvm;
 INIT_LIST_HEAD(&vcore->preempt_list);

 return vcore;
}
