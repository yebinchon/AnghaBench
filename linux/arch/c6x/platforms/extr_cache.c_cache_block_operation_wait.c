
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 scalar_t__ imcr_get (unsigned int) ;

__attribute__((used)) static void cache_block_operation_wait(unsigned int wc_reg)
{

 while (imcr_get(wc_reg))
  cpu_relax();
}
