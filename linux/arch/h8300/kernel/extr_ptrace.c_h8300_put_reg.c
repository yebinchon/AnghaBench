
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long usp; scalar_t__ esp0; } ;
struct task_struct {TYPE_1__ thread; } ;


 unsigned short CCR_MASK ;
 unsigned short EXR_MASK ;



 scalar_t__* register_offset ;

int h8300_put_reg(struct task_struct *task, int regno, unsigned long data)
{
 unsigned short oldccr;
 unsigned short oldexr;

 switch (regno) {
 case 128:
  task->thread.usp = data - sizeof(long)*2;
 case 130:
  oldccr = *(unsigned short *)(task->thread.esp0 +
          register_offset[regno]);
  oldccr &= ~CCR_MASK;
  data &= CCR_MASK;
  data |= oldccr;
  *(unsigned short *)(task->thread.esp0 +
        register_offset[regno]) = data;
  break;
 case 129:
  oldexr = *(unsigned short *)(task->thread.esp0 +
          register_offset[regno]);
  oldccr &= ~EXR_MASK;
  data &= EXR_MASK;
  data |= oldexr;
  *(unsigned short *)(task->thread.esp0 +
        register_offset[regno]) = data;
  break;
 default:
  *(unsigned long *)(task->thread.esp0 +
       register_offset[regno]) = data;
  break;
 }
 return 0;
}
