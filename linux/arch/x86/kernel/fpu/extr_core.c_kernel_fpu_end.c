
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_FPU (int) ;
 int in_kernel_fpu ;
 int preempt_enable () ;
 int this_cpu_read (int ) ;
 int this_cpu_write (int ,int) ;

void kernel_fpu_end(void)
{
 WARN_ON_FPU(!this_cpu_read(in_kernel_fpu));

 this_cpu_write(in_kernel_fpu, 0);
 preempt_enable();
}
