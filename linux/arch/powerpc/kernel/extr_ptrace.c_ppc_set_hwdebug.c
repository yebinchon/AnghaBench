
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_hw_breakpoint {unsigned long address; int len; int type; } ;
struct thread_struct {struct arch_hw_breakpoint hw_brk; struct perf_event** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;
struct ppc_hw_breakpoint {int version; int trigger_type; int addr_mode; int condition_mode; unsigned long addr; int addr2; } ;
struct perf_event_attr {unsigned long bp_addr; int bp_len; int bp_type; } ;
struct perf_event {int dummy; } ;


 long EINVAL ;
 long EIO ;
 long ENODEV ;
 long ENOSPC ;
 long ENOTSUPP ;
 unsigned long HW_BREAKPOINT_ALIGN ;
 int HW_BRK_TYPE_READ ;
 int HW_BRK_TYPE_TRANSLATE ;
 int HW_BRK_TYPE_WRITE ;
 scalar_t__ IS_ERR (struct perf_event*) ;
 int PPC_BREAKPOINT_CONDITION_BE_ALL ;
 int PPC_BREAKPOINT_CONDITION_MODE ;
 int PPC_BREAKPOINT_CONDITION_NONE ;
 int PPC_BREAKPOINT_MODE_EXACT ;
 int PPC_BREAKPOINT_MODE_MASK ;
 int PPC_BREAKPOINT_MODE_RANGE_INCLUSIVE ;
 int PPC_BREAKPOINT_TRIGGER_EXECUTE ;
 int PPC_BREAKPOINT_TRIGGER_READ ;
 int PPC_BREAKPOINT_TRIGGER_RW ;
 int PPC_BREAKPOINT_TRIGGER_WRITE ;
 long PTR_ERR (struct perf_event*) ;
 unsigned long TASK_SIZE ;
 int arch_bp_generic_fields (int ,int *) ;
 int hw_breakpoint_init (struct perf_event_attr*) ;
 int ppc_breakpoint_available () ;
 int ptrace_triggered ;
 struct perf_event* register_user_hw_breakpoint (struct perf_event_attr*,int ,int *,struct task_struct*) ;
 long set_dac (struct task_struct*,struct ppc_hw_breakpoint*) ;
 long set_dac_range (struct task_struct*,struct ppc_hw_breakpoint*) ;
 long set_instruction_bp (struct task_struct*,struct ppc_hw_breakpoint*) ;

__attribute__((used)) static long ppc_set_hwdebug(struct task_struct *child,
       struct ppc_hw_breakpoint *bp_info)
{







 struct arch_hw_breakpoint brk;


 if (bp_info->version != 1)
  return -ENOTSUPP;
 if ((bp_info->trigger_type & PPC_BREAKPOINT_TRIGGER_RW) == 0 ||
     (bp_info->trigger_type & ~PPC_BREAKPOINT_TRIGGER_RW) != 0 ||
     bp_info->condition_mode != PPC_BREAKPOINT_CONDITION_NONE)
  return -EINVAL;

 if ((unsigned long)bp_info->addr >= TASK_SIZE)
  return -EIO;

 brk.address = bp_info->addr & ~7UL;
 brk.type = HW_BRK_TYPE_TRANSLATE;
 brk.len = 8;
 if (bp_info->trigger_type & PPC_BREAKPOINT_TRIGGER_READ)
  brk.type |= HW_BRK_TYPE_READ;
 if (bp_info->trigger_type & PPC_BREAKPOINT_TRIGGER_WRITE)
  brk.type |= HW_BRK_TYPE_WRITE;
 if (bp_info->addr_mode != PPC_BREAKPOINT_MODE_EXACT)
  return -EINVAL;

 if (child->thread.hw_brk.address)
  return -ENOSPC;

 if (!ppc_breakpoint_available())
  return -ENODEV;

 child->thread.hw_brk = brk;

 return 1;

}
