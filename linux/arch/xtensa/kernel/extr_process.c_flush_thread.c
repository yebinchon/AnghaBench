
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;


 int coprocessor_flush_all (struct thread_info*) ;
 int coprocessor_release_all (struct thread_info*) ;
 int current ;
 struct thread_info* current_thread_info () ;
 int flush_ptrace_hw_breakpoint (int ) ;

void flush_thread(void)
{





 flush_ptrace_hw_breakpoint(current);
}
