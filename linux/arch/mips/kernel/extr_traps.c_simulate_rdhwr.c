
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread_info {int tp_value; } ;
struct pt_regs {int* regs; } ;
struct TYPE_5__ {int linesz; } ;
struct TYPE_4__ {int linesz; } ;
struct TYPE_6__ {TYPE_2__ icache; TYPE_1__ dcache; } ;
 int PERF_COUNT_SW_EMULATION_FAULTS ;
 int current ;
 TYPE_3__ current_cpu_data ;
 int current_cpu_type () ;
 int min (int ,int ) ;
 int perf_sw_event (int ,int,struct pt_regs*,int ) ;
 int read_c0_count () ;
 int smp_processor_id () ;
 struct thread_info* task_thread_info (int ) ;

__attribute__((used)) static int simulate_rdhwr(struct pt_regs *regs, int rd, int rt)
{
 struct thread_info *ti = task_thread_info(current);

 perf_sw_event(PERF_COUNT_SW_EMULATION_FAULTS,
   1, regs, 0);
 switch (rd) {
 case 130:
  regs->regs[rt] = smp_processor_id();
  return 0;
 case 129:
  regs->regs[rt] = min(current_cpu_data.dcache.linesz,
         current_cpu_data.icache.linesz);
  return 0;
 case 132:
  regs->regs[rt] = read_c0_count();
  return 0;
 case 131:
  switch (current_cpu_type()) {
  case 134:
  case 133:
   regs->regs[rt] = 1;
   break;
  default:
   regs->regs[rt] = 2;
  }
  return 0;
 case 128:
  regs->regs[rt] = ti->tp_value;
  return 0;
 default:
  return -1;
 }
}
