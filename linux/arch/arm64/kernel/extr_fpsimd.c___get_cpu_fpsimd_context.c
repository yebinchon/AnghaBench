
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int __this_cpu_xchg (int ,int) ;
 int fpsimd_context_busy ;

__attribute__((used)) static void __get_cpu_fpsimd_context(void)
{
 bool busy = __this_cpu_xchg(fpsimd_context_busy, 1);

 WARN_ON(busy);
}
