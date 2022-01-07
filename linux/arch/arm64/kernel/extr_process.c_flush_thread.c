
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int flush_ptrace_hw_breakpoint (int ) ;
 int flush_tagged_addr_state () ;
 int fpsimd_flush_thread () ;
 int tls_thread_flush () ;

void flush_thread(void)
{
 fpsimd_flush_thread();
 tls_thread_flush();
 flush_ptrace_hw_breakpoint(current);
 flush_tagged_addr_state();
}
