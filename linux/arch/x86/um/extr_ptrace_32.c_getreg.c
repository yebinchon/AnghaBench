
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
 int panic (char*,int) ;
 size_t* reg_offsets ;

unsigned long getreg(struct task_struct *child, int regno)
{
 unsigned long mask = ~0UL;

 regno >>= 2;
 switch (regno) {
 case 132:
 case 131:
 case 143:
 case 134:
 case 129:
 case 144:
  mask = 0xffff;
  break;
 case 135:
 case 128:
 case 142:
 case 140:
 case 139:
 case 137:
 case 133:
 case 138:
 case 141:
 case 136:
 case 130:
  break;
 default:
  panic("Bad register in getreg() : %d\n", regno);
 }
 return mask & child->thread.regs.regs.gp[reg_offsets[regno]];
}
