
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vpa {unsigned long next_gpa; unsigned long len; int update_pending; } ;
struct TYPE_2__ {int vpa_update_lock; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EINVAL ;
 int L1_CACHE_BYTES ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int set_vpa(struct kvm_vcpu *vcpu, struct kvmppc_vpa *v,
     unsigned long addr, unsigned long len)
{

 if (addr & (L1_CACHE_BYTES - 1))
  return -EINVAL;
 spin_lock(&vcpu->arch.vpa_update_lock);
 if (v->next_gpa != addr || v->len != len) {
  v->next_gpa = addr;
  v->len = addr ? len : 0;
  v->update_pending = 1;
 }
 spin_unlock(&vcpu->arch.vpa_update_lock);
 return 0;
}
