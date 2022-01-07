
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ pv_eoi; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;
struct hv_vp_assist_page {int dummy; } ;


 int kvm_hv_assist_page_enabled (struct kvm_vcpu*) ;
 int kvm_read_guest_cached (int ,int *,struct hv_vp_assist_page*,int) ;

bool kvm_hv_get_assist_page(struct kvm_vcpu *vcpu,
       struct hv_vp_assist_page *assist_page)
{
 if (!kvm_hv_assist_page_enabled(vcpu))
  return 0;
 return !kvm_read_guest_cached(vcpu->kvm, &vcpu->arch.pv_eoi.data,
          assist_page, sizeof(*assist_page));
}
