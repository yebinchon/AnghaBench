
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ version_id; scalar_t__ bit_width; } ;
union cpuid10_eax {TYPE_1__ split; int full; } ;
typedef int u64 ;
struct op_x86_model_spec {int reserved; } ;
struct op_msrs {TYPE_3__* controls; TYPE_2__* counters; } ;
struct TYPE_11__ {int x86_model; int x86; } ;
struct TYPE_10__ {int count; scalar_t__ enabled; } ;
struct TYPE_9__ {scalar_t__ addr; } ;
struct TYPE_8__ {scalar_t__ addr; } ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 int X86_FEATURE_ARCH_PERFMON ;
 int __this_cpu_read (int ) ;
 scalar_t__ boot_cpu_has (int ) ;
 TYPE_4__* counter_config ;
 scalar_t__ counter_width ;
 TYPE_5__ cpu_info ;
 int cpuid_eax (int) ;
 int num_counters ;
 int op_x86_get_ctrl (struct op_x86_model_spec const*,TYPE_4__*) ;
 int op_x86_warn_in_use (int) ;
 int rdmsrl (scalar_t__,int) ;
 int* reset_value ;
 int wrmsrl (scalar_t__,int) ;

__attribute__((used)) static void ppro_setup_ctrs(struct op_x86_model_spec const *model,
       struct op_msrs const * const msrs)
{
 u64 val;
 int i;

 if (boot_cpu_has(X86_FEATURE_ARCH_PERFMON)) {
  union cpuid10_eax eax;
  eax.full = cpuid_eax(0xa);





  if (!(eax.split.version_id == 0 &&
   __this_cpu_read(cpu_info.x86) == 6 &&
    __this_cpu_read(cpu_info.x86_model) == 15)) {

   if (counter_width < eax.split.bit_width)
    counter_width = eax.split.bit_width;
  }
 }


 for (i = 0; i < num_counters; ++i) {
  if (!msrs->controls[i].addr)
   continue;
  rdmsrl(msrs->controls[i].addr, val);
  if (val & ARCH_PERFMON_EVENTSEL_ENABLE)
   op_x86_warn_in_use(i);
  val &= model->reserved;
  wrmsrl(msrs->controls[i].addr, val);




  wrmsrl(msrs->counters[i].addr, -1LL);
 }


 for (i = 0; i < num_counters; ++i) {
  if (counter_config[i].enabled && msrs->counters[i].addr) {
   reset_value[i] = counter_config[i].count;
   wrmsrl(msrs->counters[i].addr, -reset_value[i]);
   rdmsrl(msrs->controls[i].addr, val);
   val &= model->reserved;
   val |= op_x86_get_ctrl(model, &counter_config[i]);
   wrmsrl(msrs->controls[i].addr, val);
  } else {
   reset_value[i] = 0;
  }
 }
}
