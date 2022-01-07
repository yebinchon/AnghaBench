
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int in_kernel_fpu ;
 int this_cpu_read (int ) ;

__attribute__((used)) static bool kernel_fpu_disabled(void)
{
 return this_cpu_read(in_kernel_fpu);
}
