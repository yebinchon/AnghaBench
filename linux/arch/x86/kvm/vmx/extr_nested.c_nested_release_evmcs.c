
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long hv_evmcs_vmptr; int * hv_evmcs; int hv_evmcs_map; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;
struct kvm_vcpu {int dummy; } ;


 int kvm_vcpu_unmap (struct kvm_vcpu*,int *,int) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static inline void nested_release_evmcs(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (!vmx->nested.hv_evmcs)
  return;

 kvm_vcpu_unmap(vcpu, &vmx->nested.hv_evmcs_map, 1);
 vmx->nested.hv_evmcs_vmptr = -1ull;
 vmx->nested.hv_evmcs = ((void*)0);
}
