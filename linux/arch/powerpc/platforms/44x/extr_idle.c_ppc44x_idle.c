
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MSR_CE ;
 unsigned long MSR_DE ;
 unsigned long MSR_EE ;
 unsigned long MSR_WE ;
 int isync () ;
 unsigned long mfmsr () ;
 int mtmsr (unsigned long) ;

__attribute__((used)) static void ppc44x_idle(void)
{
 unsigned long msr_save;

 msr_save = mfmsr();

 mtmsr(msr_save|MSR_WE|MSR_EE|MSR_CE|MSR_DE);
 isync();

 mtmsr(msr_save);
 isync();
}
