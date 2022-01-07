
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ esp0; int usp; } ;
struct task_struct {TYPE_1__ thread; } ;





 scalar_t__* register_offset ;

long h8300_get_reg(struct task_struct *task, int regno)
{
 switch (regno) {
 case 128:
  return task->thread.usp + sizeof(long)*2;
 case 130:
 case 129:
     return *(unsigned short *)(task->thread.esp0 +
           register_offset[regno]);
 default:
     return *(unsigned long *)(task->thread.esp0 +
          register_offset[regno]);
 }
}
