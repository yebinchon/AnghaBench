
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CVMX_CIU_EN2_PPX_IP4 (int) ;
 int CVMX_CIU_SUM2_PPX_IP4 (int) ;
 int cvmx_get_core_num () ;
 int cvmx_read_csr (int ) ;
 int do_IRQ (int) ;
 int fls64 (int) ;
 scalar_t__ likely (int) ;
 int** octeon_irq_ciu_to_irq ;
 int spurious_interrupt () ;

__attribute__((used)) static void octeon_irq_ip4_ciu(void)
{
 int coreid = cvmx_get_core_num();
 u64 ciu_sum = cvmx_read_csr(CVMX_CIU_SUM2_PPX_IP4(coreid));
 u64 ciu_en = cvmx_read_csr(CVMX_CIU_EN2_PPX_IP4(coreid));

 ciu_sum &= ciu_en;
 if (likely(ciu_sum)) {
  int bit = fls64(ciu_sum) - 1;
  int irq = octeon_irq_ciu_to_irq[2][bit];

  if (likely(irq))
   do_IRQ(irq);
  else
   spurious_interrupt();
 } else {
  spurious_interrupt();
 }
}
