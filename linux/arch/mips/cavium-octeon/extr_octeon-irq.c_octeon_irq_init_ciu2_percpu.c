
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CVMX_CIU2_EN_PPX_IP2_WRKQ (int) ;
 int CVMX_CIU2_SUM_PPX_IP2 (int) ;
 int cvmx_get_core_num () ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int,int ) ;

__attribute__((used)) static void octeon_irq_init_ciu2_percpu(void)
{
 u64 regx, ipx;
 int coreid = cvmx_get_core_num();
 u64 base = CVMX_CIU2_EN_PPX_IP2_WRKQ(coreid);
 for (regx = 0; regx <= 0x8000; regx += 0x1000) {
  for (ipx = 0; ipx <= 0x400; ipx += 0x200)
   cvmx_write_csr(base + regx + ipx, 0);
 }

 cvmx_read_csr(CVMX_CIU2_SUM_PPX_IP2(coreid));
}
