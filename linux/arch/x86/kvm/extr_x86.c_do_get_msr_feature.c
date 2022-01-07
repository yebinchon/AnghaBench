
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_msr_entry {unsigned int index; int data; } ;


 int kvm_get_msr_feature (struct kvm_msr_entry*) ;

__attribute__((used)) static int do_get_msr_feature(struct kvm_vcpu *vcpu, unsigned index, u64 *data)
{
 struct kvm_msr_entry msr;
 int r;

 msr.index = index;
 r = kvm_get_msr_feature(&msr);
 if (r)
  return r;

 *data = msr.data;

 return 0;
}
