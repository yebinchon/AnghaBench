
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {unsigned long long vmcs_link_pointer; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_host_map {int hva; } ;


 int VMCS12_SIZE ;
 struct vmcs12* get_shadow_vmcs12 (struct kvm_vcpu*) ;
 int gpa_to_gfn (unsigned long long) ;
 scalar_t__ kvm_vcpu_map (struct kvm_vcpu*,int ,struct kvm_host_map*) ;
 int kvm_vcpu_unmap (struct kvm_vcpu*,struct kvm_host_map*,int) ;
 int memcpy (struct vmcs12*,int ,int ) ;
 int nested_cpu_has_shadow_vmcs (struct vmcs12*) ;

__attribute__((used)) static void nested_cache_shadow_vmcs12(struct kvm_vcpu *vcpu,
           struct vmcs12 *vmcs12)
{
 struct kvm_host_map map;
 struct vmcs12 *shadow;

 if (!nested_cpu_has_shadow_vmcs(vmcs12) ||
     vmcs12->vmcs_link_pointer == -1ull)
  return;

 shadow = get_shadow_vmcs12(vcpu);

 if (kvm_vcpu_map(vcpu, gpa_to_gfn(vmcs12->vmcs_link_pointer), &map))
  return;

 memcpy(shadow, map.hva, VMCS12_SIZE);
 kvm_vcpu_unmap(vcpu, &map, 0);
}
