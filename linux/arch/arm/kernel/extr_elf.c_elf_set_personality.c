
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf32_hdr {unsigned int e_flags; } ;
struct TYPE_2__ {unsigned int personality; } ;


 unsigned int ADDR_LIMIT_32BIT ;
 unsigned int EF_ARM_APCS_26 ;
 unsigned int EF_ARM_EABI_MASK ;
 unsigned int EF_ARM_EABI_UNKNOWN ;
 unsigned int EF_ARM_SOFT_FLOAT ;
 int HWCAP_IWMMXT ;
 unsigned int PER_LINUX ;
 unsigned int PER_MASK ;
 int TIF_USING_IWMMXT ;
 int clear_thread_flag (int ) ;
 TYPE_1__* current ;
 int elf_hwcap ;
 int set_personality (unsigned int) ;
 int set_thread_flag (int ) ;

void elf_set_personality(const struct elf32_hdr *x)
{
 unsigned int eflags = x->e_flags;
 unsigned int personality = current->personality & ~PER_MASK;





 personality |= PER_LINUX;




 if ((eflags & EF_ARM_EABI_MASK) == EF_ARM_EABI_UNKNOWN &&
     (eflags & EF_ARM_APCS_26))
  personality &= ~ADDR_LIMIT_32BIT;
 else
  personality |= ADDR_LIMIT_32BIT;

 set_personality(personality);







 if (elf_hwcap & HWCAP_IWMMXT &&
     eflags & (EF_ARM_EABI_MASK | EF_ARM_SOFT_FLOAT)) {
  set_thread_flag(TIF_USING_IWMMXT);
 } else {
  clear_thread_flag(TIF_USING_IWMMXT);
 }
}
