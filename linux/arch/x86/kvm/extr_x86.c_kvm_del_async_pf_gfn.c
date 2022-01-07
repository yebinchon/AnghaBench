
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int * gfns; } ;
struct TYPE_4__ {TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int gfn_t ;


 size_t kvm_async_pf_gfn_slot (struct kvm_vcpu*,int ) ;
 size_t kvm_async_pf_hash_fn (int ) ;
 size_t kvm_async_pf_next_probe (size_t) ;

__attribute__((used)) static void kvm_del_async_pf_gfn(struct kvm_vcpu *vcpu, gfn_t gfn)
{
 u32 i, j, k;

 i = j = kvm_async_pf_gfn_slot(vcpu, gfn);
 while (1) {
  vcpu->arch.apf.gfns[i] = ~0;
  do {
   j = kvm_async_pf_next_probe(j);
   if (vcpu->arch.apf.gfns[j] == ~0)
    return;
   k = kvm_async_pf_hash_fn(vcpu->arch.apf.gfns[j]);





  } while ((i <= j) ? (i < k && k <= j) : (i < k || k <= j));
  vcpu->arch.apf.gfns[i] = vcpu->arch.apf.gfns[j];
  i = j;
 }
}
