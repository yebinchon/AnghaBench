
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_INTX_EN0 (int) ;
 int CVMX_CIU_INTX_EN1 (int) ;
 int CVMX_CIU_INTX_SUM0 (int) ;
 int __this_cpu_write (int ,int ) ;
 int cvmx_get_core_num () ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 int octeon_irq_ciu0_en_mirror ;
 int octeon_irq_ciu1_en_mirror ;
 int octeon_irq_ciu_spinlock ;
 int raw_spin_lock_init (int ) ;
 int this_cpu_ptr (int *) ;
 int wmb () ;

__attribute__((used)) static void octeon_irq_init_ciu_percpu(void)
{
 int coreid = cvmx_get_core_num();


 __this_cpu_write(octeon_irq_ciu0_en_mirror, 0);
 __this_cpu_write(octeon_irq_ciu1_en_mirror, 0);
 wmb();
 raw_spin_lock_init(this_cpu_ptr(&octeon_irq_ciu_spinlock));





 cvmx_write_csr(CVMX_CIU_INTX_EN0((coreid * 2)), 0);
 cvmx_write_csr(CVMX_CIU_INTX_EN0((coreid * 2 + 1)), 0);
 cvmx_write_csr(CVMX_CIU_INTX_EN1((coreid * 2)), 0);
 cvmx_write_csr(CVMX_CIU_INTX_EN1((coreid * 2 + 1)), 0);
 cvmx_read_csr(CVMX_CIU_INTX_SUM0((coreid * 2)));
}
