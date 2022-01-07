
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shift; int shft_cnt; int shft_reg; int select; } ;
union cvmx_ciu_qlm_jtgd {TYPE_1__ s; scalar_t__ u64; } ;
typedef int uint32_t ;


 int CVMX_CIU_QLM_JTGD ;
 int OCTEON_CN56XX_PASS1_X ;
 int OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

uint32_t cvmx_helper_qlm_jtag_shift(int qlm, int bits, uint32_t data)
{
 union cvmx_ciu_qlm_jtgd jtgd;
 jtgd.u64 = 0;
 jtgd.s.shift = 1;
 jtgd.s.shft_cnt = bits - 1;
 jtgd.s.shft_reg = data;
 if (!OCTEON_IS_MODEL(OCTEON_CN56XX_PASS1_X))
  jtgd.s.select = 1 << qlm;
 cvmx_write_csr(CVMX_CIU_QLM_JTGD, jtgd.u64);
 do {
  jtgd.u64 = cvmx_read_csr(CVMX_CIU_QLM_JTGD);
 } while (jtgd.s.shift);
 return jtgd.s.shft_reg >> (32 - bits);
}
