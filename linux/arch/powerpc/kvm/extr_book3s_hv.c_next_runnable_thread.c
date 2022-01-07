
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {int * runnable_threads; } ;
struct kvm_vcpu {int dummy; } ;


 int MAX_SMT_THREADS ;
 struct kvm_vcpu* READ_ONCE (int ) ;

__attribute__((used)) static inline struct kvm_vcpu *next_runnable_thread(struct kvmppc_vcore *vc,
  int *ip)
{
 int i = *ip;
 struct kvm_vcpu *vcpu;

 while (++i < MAX_SMT_THREADS) {
  vcpu = READ_ONCE(vc->runnable_threads[i]);
  if (vcpu) {
   *ip = i;
   return vcpu;
  }
 }
 return ((void*)0);
}
