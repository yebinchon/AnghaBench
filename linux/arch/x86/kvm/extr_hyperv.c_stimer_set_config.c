
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union hv_stimer_config {scalar_t__ sintx; int as_uint64; scalar_t__ enable; int direct_mode; } ;
typedef int u64 ;
struct TYPE_3__ {scalar_t__ enable; int as_uint64; } ;
struct kvm_vcpu_hv_stimer {TYPE_1__ config; int index; } ;
struct TYPE_4__ {int vcpu_id; } ;


 int stimer_cleanup (struct kvm_vcpu_hv_stimer*) ;
 int stimer_mark_pending (struct kvm_vcpu_hv_stimer*,int) ;
 TYPE_2__* stimer_to_vcpu (struct kvm_vcpu_hv_stimer*) ;
 int trace_kvm_hv_stimer_set_config (int ,int ,int ,int) ;

__attribute__((used)) static int stimer_set_config(struct kvm_vcpu_hv_stimer *stimer, u64 config,
        bool host)
{
 union hv_stimer_config new_config = {.as_uint64 = config},
  old_config = {.as_uint64 = stimer->config.as_uint64};

 trace_kvm_hv_stimer_set_config(stimer_to_vcpu(stimer)->vcpu_id,
           stimer->index, config, host);

 stimer_cleanup(stimer);
 if (old_config.enable &&
     !new_config.direct_mode && new_config.sintx == 0)
  new_config.enable = 0;
 stimer->config.as_uint64 = new_config.as_uint64;

 if (stimer->config.enable)
  stimer_mark_pending(stimer, 0);

 return 0;
}
