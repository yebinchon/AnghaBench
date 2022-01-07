
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int FSR_EXTERNAL ;
 unsigned int FSR_IMPRECISE ;
 unsigned int FSR_READ ;

__attribute__((used)) static int bcm5301x_abort_handler(unsigned long addr, unsigned int fsr,
      struct pt_regs *regs)
{






 if (fsr == (FSR_EXTERNAL | FSR_READ | FSR_IMPRECISE))
  return 0;

 return 1;
}
