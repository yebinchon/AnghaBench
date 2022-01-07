
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_helper_qlm_jtag_init () ;
 int cvmx_helper_qlm_jtag_shift (int,int,int) ;
 int cvmx_helper_qlm_jtag_shift_zeros (int,int) ;
 int cvmx_helper_qlm_jtag_update (int) ;

void __cvmx_helper_errata_qlm_disable_2nd_order_cdr(int qlm)
{
 int lane;
 cvmx_helper_qlm_jtag_init();

 for (lane = 0; lane < 4; lane++) {






  cvmx_helper_qlm_jtag_shift_zeros(qlm, 63 - 0 + 1);

  cvmx_helper_qlm_jtag_shift(qlm, 67 - 64 + 1, 3);

  cvmx_helper_qlm_jtag_shift_zeros(qlm, 76 - 68 + 1);

  cvmx_helper_qlm_jtag_shift(qlm, 77 - 77 + 1, 1);

  cvmx_helper_qlm_jtag_shift_zeros(qlm, 267 - 78 + 1);
 }
 cvmx_helper_qlm_jtag_update(qlm);
}
