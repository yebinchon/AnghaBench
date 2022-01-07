
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __this_cpu_read (int ) ;
 int fpsimd_context_busy ;
 int preemptible () ;

__attribute__((used)) static bool have_cpu_fpsimd_context(void)
{
 return !preemptible() && __this_cpu_read(fpsimd_context_busy);
}
