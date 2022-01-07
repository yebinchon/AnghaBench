
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct pt_regs {int tpc; } ;
struct perf_callchain_entry_ctx {int dummy; } ;
struct TYPE_4__ {int mm; } ;
struct TYPE_3__ {int fault_address; } ;


 int TIF_32BIT ;
 TYPE_2__* current ;
 TYPE_1__* current_thread_info () ;
 int flushw_user () ;
 int get_thread_fault_code () ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int perf_callchain_store (struct perf_callchain_entry_ctx*,int ) ;
 int perf_callchain_user_32 (struct perf_callchain_entry_ctx*,struct pt_regs*) ;
 int perf_callchain_user_64 (struct perf_callchain_entry_ctx*,struct pt_regs*) ;
 int set_thread_fault_code (int ) ;
 scalar_t__ test_thread_flag (int ) ;

void
perf_callchain_user(struct perf_callchain_entry_ctx *entry, struct pt_regs *regs)
{
 u64 saved_fault_address = current_thread_info()->fault_address;
 u8 saved_fault_code = get_thread_fault_code();

 perf_callchain_store(entry, regs->tpc);

 if (!current->mm)
  return;

 flushw_user();

 pagefault_disable();

 if (test_thread_flag(TIF_32BIT))
  perf_callchain_user_32(entry, regs);
 else
  perf_callchain_user_64(entry, regs);

 pagefault_enable();

 set_thread_fault_code(saved_fault_code);
 current_thread_info()->fault_address = saved_fault_address;
}
