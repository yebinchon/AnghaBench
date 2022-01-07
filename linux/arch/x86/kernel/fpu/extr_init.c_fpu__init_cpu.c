
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fpu__init_cpu_generic () ;
 int fpu__init_cpu_xstate () ;

void fpu__init_cpu(void)
{
 fpu__init_cpu_generic();
 fpu__init_cpu_xstate();
}
