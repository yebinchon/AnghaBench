
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clk_div; int bypass; scalar_t__ mux_sel; } ;
union cvmx_ciu_qlm_jtgc {scalar_t__ u64; TYPE_1__ s; } ;
typedef int uint32_t ;
struct TYPE_4__ {int cpu_clock_hz; } ;


 int CVMX_CIU_QLM_JTGC ;
 int OCTEON_CN52XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_read_csr (int ) ;
 TYPE_2__* cvmx_sysinfo_get () ;
 int cvmx_write_csr (int ,scalar_t__) ;

void cvmx_helper_qlm_jtag_init(void)
{
 union cvmx_ciu_qlm_jtgc jtgc;
 uint32_t clock_div = 0;
 uint32_t divisor = cvmx_sysinfo_get()->cpu_clock_hz / (25 * 1000000);
 divisor = (divisor - 1) >> 2;

 while (divisor) {
  clock_div++;
  divisor = divisor >> 1;
 }





 jtgc.u64 = 0;
 jtgc.s.clk_div = clock_div;
 jtgc.s.mux_sel = 0;
 if (OCTEON_IS_MODEL(OCTEON_CN52XX))
  jtgc.s.bypass = 0x3;
 else
  jtgc.s.bypass = 0xf;
 cvmx_write_csr(CVMX_CIU_QLM_JTGC, jtgc.u64);
 cvmx_read_csr(CVMX_CIU_QLM_JTGC);
}
