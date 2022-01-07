
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disabled; int bp_type; int bp_len; int bp_addr; } ;
struct perf_event {TYPE_1__ attr; } ;
struct arch_hw_breakpoint {int type; int len; int address; } ;
struct TYPE_4__ {int type; int len; int addr; int pev; int enabled; } ;


 int HBP_NUM ;
 int arch_install_hw_breakpoint (struct perf_event*) ;
 TYPE_2__* breakinfo ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 scalar_t__ dbg_is_early ;
 int early_dr7 ;
 int encode_dr7 (int,int ,int ) ;
 int hw_breakpoint_restore () ;
 struct perf_event** per_cpu_ptr (int ,int) ;
 int raw_smp_processor_id () ;
 int set_debugreg (int ,int) ;

__attribute__((used)) static void kgdb_correct_hw_break(void)
{
 int breakno;

 for (breakno = 0; breakno < HBP_NUM; breakno++) {
  struct perf_event *bp;
  struct arch_hw_breakpoint *info;
  int val;
  int cpu = raw_smp_processor_id();
  if (!breakinfo[breakno].enabled)
   continue;
  if (dbg_is_early) {
   set_debugreg(breakinfo[breakno].addr, breakno);
   early_dr7 |= encode_dr7(breakno,
      breakinfo[breakno].len,
      breakinfo[breakno].type);
   set_debugreg(early_dr7, 7);
   continue;
  }
  bp = *per_cpu_ptr(breakinfo[breakno].pev, cpu);
  info = counter_arch_bp(bp);
  if (bp->attr.disabled != 1)
   continue;
  bp->attr.bp_addr = breakinfo[breakno].addr;
  bp->attr.bp_len = breakinfo[breakno].len;
  bp->attr.bp_type = breakinfo[breakno].type;
  info->address = breakinfo[breakno].addr;
  info->len = breakinfo[breakno].len;
  info->type = breakinfo[breakno].type;
  val = arch_install_hw_breakpoint(bp);
  if (!val)
   bp->attr.disabled = 0;
 }
 if (!dbg_is_early)
  hw_breakpoint_restore();
}
