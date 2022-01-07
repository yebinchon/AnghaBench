
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_WDOGX (int ) ;
 int cvmx_get_core_num () ;
 int cvmx_write_csr (int ,int ) ;
 int local_irq_disable () ;
 scalar_t__ octeon_is_simulation () ;

__attribute__((used)) static void octeon_kill_core(void *arg)
{
 if (octeon_is_simulation())

  asm volatile ("break" ::: "memory");

 local_irq_disable();

 cvmx_write_csr(CVMX_CIU_WDOGX(cvmx_get_core_num()), 0);

 while (1)
  asm volatile ("wait" ::: "memory");
}
