
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CVMX_CIU2_ACK_PPX_IP3 (unsigned long const) ;
 int CVMX_CIU2_INTR_CIU_READY ;
 int CVMX_CIU2_SUM_PPX_IP3 (unsigned long const) ;
 int OCTEON_CN68XX ;
 scalar_t__ OCTEON_IRQ_MBOX0 ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 unsigned long cvmx_get_core_num () ;
 int cvmx_read_csr (int ) ;
 int do_IRQ (scalar_t__) ;
 int fls64 (int) ;
 int spurious_interrupt () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void octeon_irq_ciu2_mbox(void)
{
 int line;

 const unsigned long core_id = cvmx_get_core_num();
 u64 sum = cvmx_read_csr(CVMX_CIU2_SUM_PPX_IP3(core_id)) >> 60;

 if (unlikely(!sum))
  goto spurious;

 line = fls64(sum) - 1;

 do_IRQ(OCTEON_IRQ_MBOX0 + line);
 goto out;

spurious:
 spurious_interrupt();
out:


 if (OCTEON_IS_MODEL(OCTEON_CN68XX))
  cvmx_read_csr(CVMX_CIU2_INTR_CIU_READY);
 else
  cvmx_read_csr(CVMX_CIU2_ACK_PPX_IP3(core_id));
 return;
}
