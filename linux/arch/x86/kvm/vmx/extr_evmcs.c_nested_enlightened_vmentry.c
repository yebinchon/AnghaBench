
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct kvm_vcpu {int dummy; } ;
struct hv_vp_assist_page {unsigned long long current_nested_vmcs; int enlighten_vmentry; } ;


 int kvm_hv_get_assist_page (struct kvm_vcpu*,struct hv_vp_assist_page*) ;
 scalar_t__ unlikely (int) ;

bool nested_enlightened_vmentry(struct kvm_vcpu *vcpu, u64 *evmcs_gpa)
{
 struct hv_vp_assist_page assist_page;

 *evmcs_gpa = -1ull;

 if (unlikely(!kvm_hv_get_assist_page(vcpu, &assist_page)))
  return 0;

 if (unlikely(!assist_page.enlighten_vmentry))
  return 0;

 *evmcs_gpa = assist_page.current_nested_vmcs;

 return 1;
}
