
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_EFLAGS ;
 int X86_EFLAGS_CF ;
 int fcmovCC () ;

void fcmovb(void)
{
 if (FPU_EFLAGS & X86_EFLAGS_CF)
  fcmovCC();
}
