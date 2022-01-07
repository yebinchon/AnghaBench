
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hg2cc; int hg2fld; int undat; int uneop; int unsop; int bad_term; int bad_seq; int rem_fault; int loc_fault; int pause_drp; int ovrerr; int skperr; int rcverr; int jabber; int carext; int niberr; int alnerr; int maxerr; int minerr; } ;
union cvmx_gmxx_rxx_int_en {scalar_t__ u64; TYPE_1__ s; } ;


 int CVMX_GMXX_RXX_INT_EN (int,int) ;
 int CVMX_GMXX_RXX_INT_REG (int,int) ;
 int OCTEON_CN30XX ;
 int OCTEON_CN31XX ;
 int OCTEON_CN38XX ;
 int OCTEON_CN50XX ;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

void __cvmx_interrupt_gmxx_rxx_int_en_enable(int index, int block)
{
 union cvmx_gmxx_rxx_int_en gmx_rx_int_en;
 cvmx_write_csr(CVMX_GMXX_RXX_INT_REG(index, block),
         cvmx_read_csr(CVMX_GMXX_RXX_INT_REG(index, block)));
 gmx_rx_int_en.u64 = 0;
 if (OCTEON_IS_MODEL(OCTEON_CN56XX)) {

  gmx_rx_int_en.s.hg2cc = 1;
  gmx_rx_int_en.s.hg2fld = 1;
  gmx_rx_int_en.s.undat = 1;
  gmx_rx_int_en.s.uneop = 1;
  gmx_rx_int_en.s.unsop = 1;
  gmx_rx_int_en.s.bad_term = 1;
  gmx_rx_int_en.s.bad_seq = 1;
  gmx_rx_int_en.s.rem_fault = 1;
  gmx_rx_int_en.s.loc_fault = 1;
  gmx_rx_int_en.s.pause_drp = 1;






  gmx_rx_int_en.s.ovrerr = 1;

  gmx_rx_int_en.s.skperr = 1;
  gmx_rx_int_en.s.rcverr = 1;


  gmx_rx_int_en.s.jabber = 1;

  gmx_rx_int_en.s.carext = 1;

 }
 if (OCTEON_IS_MODEL(OCTEON_CN30XX)) {
  gmx_rx_int_en.s.ovrerr = 1;
  gmx_rx_int_en.s.niberr = 1;
  gmx_rx_int_en.s.skperr = 1;
  gmx_rx_int_en.s.rcverr = 1;

  gmx_rx_int_en.s.alnerr = 1;

  gmx_rx_int_en.s.jabber = 1;
  gmx_rx_int_en.s.maxerr = 1;
  gmx_rx_int_en.s.carext = 1;
  gmx_rx_int_en.s.minerr = 1;
 }
 if (OCTEON_IS_MODEL(OCTEON_CN50XX)) {

  gmx_rx_int_en.s.pause_drp = 1;
  gmx_rx_int_en.s.ovrerr = 1;
  gmx_rx_int_en.s.niberr = 1;
  gmx_rx_int_en.s.skperr = 1;
  gmx_rx_int_en.s.rcverr = 1;

  gmx_rx_int_en.s.alnerr = 1;

  gmx_rx_int_en.s.jabber = 1;

  gmx_rx_int_en.s.carext = 1;

 }
 if (OCTEON_IS_MODEL(OCTEON_CN38XX)) {
  gmx_rx_int_en.s.ovrerr = 1;
  gmx_rx_int_en.s.niberr = 1;
  gmx_rx_int_en.s.skperr = 1;
  gmx_rx_int_en.s.rcverr = 1;

  gmx_rx_int_en.s.alnerr = 1;

  gmx_rx_int_en.s.jabber = 1;
  gmx_rx_int_en.s.maxerr = 1;
  gmx_rx_int_en.s.carext = 1;
  gmx_rx_int_en.s.minerr = 1;
 }
 if (OCTEON_IS_MODEL(OCTEON_CN31XX)) {
  gmx_rx_int_en.s.ovrerr = 1;
  gmx_rx_int_en.s.niberr = 1;
  gmx_rx_int_en.s.skperr = 1;
  gmx_rx_int_en.s.rcverr = 1;

  gmx_rx_int_en.s.alnerr = 1;

  gmx_rx_int_en.s.jabber = 1;
  gmx_rx_int_en.s.maxerr = 1;
  gmx_rx_int_en.s.carext = 1;
  gmx_rx_int_en.s.minerr = 1;
 }
 if (OCTEON_IS_MODEL(OCTEON_CN58XX)) {

  gmx_rx_int_en.s.pause_drp = 1;
  gmx_rx_int_en.s.ovrerr = 1;
  gmx_rx_int_en.s.niberr = 1;
  gmx_rx_int_en.s.skperr = 1;
  gmx_rx_int_en.s.rcverr = 1;

  gmx_rx_int_en.s.alnerr = 1;

  gmx_rx_int_en.s.jabber = 1;
  gmx_rx_int_en.s.maxerr = 1;
  gmx_rx_int_en.s.carext = 1;
  gmx_rx_int_en.s.minerr = 1;
 }
 if (OCTEON_IS_MODEL(OCTEON_CN52XX)) {

  gmx_rx_int_en.s.hg2cc = 1;
  gmx_rx_int_en.s.hg2fld = 1;
  gmx_rx_int_en.s.undat = 1;
  gmx_rx_int_en.s.uneop = 1;
  gmx_rx_int_en.s.unsop = 1;
  gmx_rx_int_en.s.bad_term = 1;
  gmx_rx_int_en.s.bad_seq = 0;
  gmx_rx_int_en.s.rem_fault = 1;
  gmx_rx_int_en.s.loc_fault = 0;
  gmx_rx_int_en.s.pause_drp = 1;






  gmx_rx_int_en.s.ovrerr = 1;

  gmx_rx_int_en.s.skperr = 1;
  gmx_rx_int_en.s.rcverr = 1;


  gmx_rx_int_en.s.jabber = 1;

  gmx_rx_int_en.s.carext = 1;

 }
 cvmx_write_csr(CVMX_GMXX_RXX_INT_EN(index, block), gmx_rx_int_en.u64);
}
