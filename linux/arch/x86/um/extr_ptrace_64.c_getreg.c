
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long* gp; } ;
struct TYPE_5__ {TYPE_1__ regs; } ;
struct TYPE_6__ {TYPE_2__ regs; } ;
struct task_struct {TYPE_3__ thread; } ;
 int TIF_IA32 ;
 int panic (char*,int) ;
 size_t* reg_offsets ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

unsigned long getreg(struct task_struct *child, int regno)
{
 unsigned long mask = ~0UL;




 switch (regno) {
 case 139:
 case 138:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 131:
 case 129:
 case 137:
 case 135:
 case 134:
 case 132:
 case 130:
 case 133:
 case 136:
 case 146:
 case 152:
 case 149:
 case 147:
  break;
 case 150:
 case 148:
 case 153:
 case 151:
 case 128:
 case 154:
  mask = 0xffff;
  break;
 default:
  panic("Bad register in getreg: %d\n", regno);
 }
 return mask & child->thread.regs.regs.gp[reg_offsets[regno >> 3]];
}
