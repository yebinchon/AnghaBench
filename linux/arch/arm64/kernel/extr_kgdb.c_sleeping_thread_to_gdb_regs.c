
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_context {unsigned long x19; unsigned long x20; unsigned long x21; unsigned long x22; unsigned long x23; unsigned long x24; unsigned long x25; unsigned long x26; unsigned long x27; unsigned long x28; unsigned long fp; unsigned long sp; unsigned long pc; } ;
struct TYPE_2__ {struct cpu_context cpu_context; } ;
struct task_struct {TYPE_1__ thread; } ;


 int NUMREGBYTES ;
 int memset (char*,int ,int ) ;

void
sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *task)
{
 struct cpu_context *cpu_context = &task->thread.cpu_context;


 memset((char *)gdb_regs, 0, NUMREGBYTES);

 gdb_regs[19] = cpu_context->x19;
 gdb_regs[20] = cpu_context->x20;
 gdb_regs[21] = cpu_context->x21;
 gdb_regs[22] = cpu_context->x22;
 gdb_regs[23] = cpu_context->x23;
 gdb_regs[24] = cpu_context->x24;
 gdb_regs[25] = cpu_context->x25;
 gdb_regs[26] = cpu_context->x26;
 gdb_regs[27] = cpu_context->x27;
 gdb_regs[28] = cpu_context->x28;
 gdb_regs[29] = cpu_context->fp;

 gdb_regs[31] = cpu_context->sp;
 gdb_regs[32] = cpu_context->pc;
}
