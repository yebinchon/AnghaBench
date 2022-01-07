
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CVMX_CIU_INTX_SUM0 (unsigned long const) ;
 int __this_cpu_read (int ) ;
 unsigned long cvmx_get_core_num () ;
 int cvmx_read_csr (int ) ;
 int do_IRQ (int) ;
 int fls64 (int) ;
 scalar_t__ likely (int) ;
 int octeon_irq_ciu0_en_mirror ;
 int** octeon_irq_ciu_to_irq ;
 int spurious_interrupt () ;

__attribute__((used)) static void octeon_irq_ip2_ciu(void)
{
 const unsigned long core_id = cvmx_get_core_num();
 u64 ciu_sum = cvmx_read_csr(CVMX_CIU_INTX_SUM0(core_id * 2));

 ciu_sum &= __this_cpu_read(octeon_irq_ciu0_en_mirror);
 if (likely(ciu_sum)) {
  int bit = fls64(ciu_sum) - 1;
  int irq = octeon_irq_ciu_to_irq[0][bit];
  if (likely(irq))
   do_IRQ(irq);
  else
   spurious_interrupt();
 } else {
  spurious_interrupt();
 }
}
