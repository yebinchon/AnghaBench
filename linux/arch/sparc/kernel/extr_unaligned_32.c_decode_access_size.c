
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kregs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int die_if_kernel (char*,int ) ;
 int printk (char*,unsigned int) ;

__attribute__((used)) static inline int decode_access_size(unsigned int insn)
{
 insn = (insn >> 19) & 3;

 if(!insn)
  return 4;
 else if(insn == 3)
  return 8;
 else if(insn == 2)
  return 2;
 else {
  printk("Impossible unaligned trap. insn=%08x\n", insn);
  die_if_kernel("Byte sized unaligned access?!?!", current->thread.kregs);
  return 4;
 }
}
