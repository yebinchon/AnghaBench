
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {unsigned long sp; int ra; } ;


 unsigned long THREAD_SIZE ;
 int oprofile_add_trace (int ) ;
 int unwind_user_frame (struct stackframe*,unsigned int const) ;

__attribute__((used)) static inline void do_user_backtrace(unsigned long low_addr,
         struct stackframe *frame,
         unsigned int depth)
{
 const unsigned int max_instr_check = 512;
 const unsigned long high_addr = low_addr + THREAD_SIZE;

 while (depth-- && !unwind_user_frame(frame, max_instr_check)) {
  oprofile_add_trace(frame->ra);
  if (frame->sp < low_addr || frame->sp > high_addr)
   break;
 }
}
