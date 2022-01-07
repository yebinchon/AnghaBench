
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int tsc_seq ;
struct pvclock_vcpu_time_info {int dummy; } ;
struct TYPE_5__ {int tsc_sequence; } ;
struct kvm_hv {int hv_tsc_page; int hv_lock; TYPE_2__ tsc_ref; } ;
struct TYPE_4__ {struct kvm_hv hyperv; } ;
struct kvm {TYPE_1__ arch; } ;


 int BUILD_BUG_ON (int) ;
 int HV_REFERENCE_TSC_PAGE ;
 int HV_X64_MSR_TSC_REFERENCE_ADDRESS_SHIFT ;
 int HV_X64_MSR_TSC_REFERENCE_ENABLE ;
 int compute_tsc_page_parameters (struct pvclock_vcpu_time_info*,TYPE_2__*) ;
 int gfn_to_gpa (int) ;
 int kvm_read_guest (struct kvm*,int ,int*,int) ;
 scalar_t__ kvm_write_guest (struct kvm*,int ,TYPE_2__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ offsetof (int ,int ) ;
 int smp_wmb () ;
 int tsc_sequence ;
 scalar_t__ unlikely (int ) ;

void kvm_hv_setup_tsc_page(struct kvm *kvm,
      struct pvclock_vcpu_time_info *hv_clock)
{
 struct kvm_hv *hv = &kvm->arch.hyperv;
 u32 tsc_seq;
 u64 gfn;

 BUILD_BUG_ON(sizeof(tsc_seq) != sizeof(hv->tsc_ref.tsc_sequence));
 BUILD_BUG_ON(offsetof(HV_REFERENCE_TSC_PAGE, tsc_sequence) != 0);

 if (!(hv->hv_tsc_page & HV_X64_MSR_TSC_REFERENCE_ENABLE))
  return;

 mutex_lock(&kvm->arch.hyperv.hv_lock);
 if (!(hv->hv_tsc_page & HV_X64_MSR_TSC_REFERENCE_ENABLE))
  goto out_unlock;

 gfn = hv->hv_tsc_page >> HV_X64_MSR_TSC_REFERENCE_ADDRESS_SHIFT;




 if (unlikely(kvm_read_guest(kvm, gfn_to_gpa(gfn),
        &tsc_seq, sizeof(tsc_seq))))
  goto out_unlock;





 hv->tsc_ref.tsc_sequence = 0;
 if (kvm_write_guest(kvm, gfn_to_gpa(gfn),
       &hv->tsc_ref, sizeof(hv->tsc_ref.tsc_sequence)))
  goto out_unlock;

 if (!compute_tsc_page_parameters(hv_clock, &hv->tsc_ref))
  goto out_unlock;


 smp_wmb();
 if (kvm_write_guest(kvm, gfn_to_gpa(gfn), &hv->tsc_ref, sizeof(hv->tsc_ref)))
  goto out_unlock;




 tsc_seq++;
 if (tsc_seq == 0xFFFFFFFF || tsc_seq == 0)
  tsc_seq = 1;


 smp_wmb();

 hv->tsc_ref.tsc_sequence = tsc_seq;
 kvm_write_guest(kvm, gfn_to_gpa(gfn),
   &hv->tsc_ref, sizeof(hv->tsc_ref.tsc_sequence));
out_unlock:
 mutex_unlock(&kvm->arch.hyperv.hv_lock);
}
