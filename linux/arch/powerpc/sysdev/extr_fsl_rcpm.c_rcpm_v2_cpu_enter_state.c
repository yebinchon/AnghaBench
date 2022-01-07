
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pcph30setr; int pcph20setr; int pcph15setr; int tph10setr0; } ;






 int cpu_core_index_of_thread (int) ;
 int get_hard_smp_processor_id (int) ;
 int pr_warn (char*,int) ;
 TYPE_1__* rcpm_v2_regs ;
 int setbits32 (int *,int) ;

__attribute__((used)) static void rcpm_v2_cpu_enter_state(int cpu, int state)
{
 int hw_cpu = get_hard_smp_processor_id(cpu);
 u32 mask = 1 << cpu_core_index_of_thread(cpu);

 switch (state) {
 case 131:

  setbits32(&rcpm_v2_regs->tph10setr0, 1 << hw_cpu);
  break;
 case 130:
  setbits32(&rcpm_v2_regs->pcph15setr, mask);
  break;
 case 129:
  setbits32(&rcpm_v2_regs->pcph20setr, mask);
  break;
 case 128:
  setbits32(&rcpm_v2_regs->pcph30setr, mask);
  break;
 default:
  pr_warn("Unknown cpu PM state (%d)\n", state);
 }
}
