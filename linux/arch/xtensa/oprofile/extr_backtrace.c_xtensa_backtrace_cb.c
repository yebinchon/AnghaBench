
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {int pc; } ;


 int oprofile_add_trace (int ) ;

__attribute__((used)) static int xtensa_backtrace_cb(struct stackframe *frame, void *data)
{
 oprofile_add_trace(frame->pc);
 return 0;
}
