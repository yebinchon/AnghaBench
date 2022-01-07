
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int u64 ;
struct xen_pmu_intel_ctxt {int global_status; int fixed_ctrl; int global_ctrl; int global_ovf_ctrl; } ;
struct TYPE_3__ {struct xen_pmu_intel_ctxt intel; } ;
struct TYPE_4__ {TYPE_1__ c; } ;
struct xen_pmu_data {TYPE_2__ pmu; } ;
struct xen_pmu_cntr_pair {int control; int counter; } ;
 int XENPMU_IRQ_PROCESSING ;
 int arch_counters ;
 void* field_offset (struct xen_pmu_intel_ctxt*,int ) ;
 int fixed_counters ;
 struct xen_pmu_data* get_xenpmu_data () ;
 int get_xenpmu_flags () ;

__attribute__((used)) static bool xen_intel_pmu_emulate(unsigned int msr, u64 *val, int type,
      int index, bool is_read)
{
 uint64_t *reg = ((void*)0);
 struct xen_pmu_intel_ctxt *ctxt;
 uint64_t *fix_counters;
 struct xen_pmu_cntr_pair *arch_cntr_pair;
 struct xen_pmu_data *xenpmu_data = get_xenpmu_data();
 uint8_t xenpmu_flags = get_xenpmu_flags();


 if (!xenpmu_data || !(xenpmu_flags & XENPMU_IRQ_PROCESSING))
  return 0;

 ctxt = &xenpmu_data->pmu.c.intel;

 switch (msr) {
 case 132:
  reg = &ctxt->global_ovf_ctrl;
  break;
 case 131:
  reg = &ctxt->global_status;
  break;
 case 133:
  reg = &ctxt->global_ctrl;
  break;
 case 134:
  reg = &ctxt->fixed_ctrl;
  break;
 default:
  switch (type) {
  case 128:
   fix_counters = field_offset(ctxt, fixed_counters);
   reg = &fix_counters[index];
   break;
  case 130:
   arch_cntr_pair = field_offset(ctxt, arch_counters);
   reg = &arch_cntr_pair[index].counter;
   break;
  case 129:
   arch_cntr_pair = field_offset(ctxt, arch_counters);
   reg = &arch_cntr_pair[index].control;
   break;
  default:
   return 0;
  }
 }

 if (reg) {
  if (is_read)
   *val = *reg;
  else {
   *reg = *val;

   if (msr == 132)
    ctxt->global_status &= (~(*val));
  }
  return 1;
 }

 return 0;
}
