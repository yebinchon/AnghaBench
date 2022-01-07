
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int int_loop; } ;
union cvmx_asxx_prt_loop {TYPE_1__ s; int u64; } ;
struct TYPE_7__ {int full_duplex; int link_up; int speed; } ;
struct TYPE_8__ {TYPE_2__ s; scalar_t__ u64; } ;
typedef TYPE_3__ cvmx_helper_link_info_t ;


 int CVMX_ASXX_PRT_LOOP (int) ;
 TYPE_3__ __cvmx_helper_board_link_get (int) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 int cvmx_read_csr (int ) ;

cvmx_helper_link_info_t __cvmx_helper_rgmii_link_get(int ipd_port)
{
 int interface = cvmx_helper_get_interface_num(ipd_port);
 int index = cvmx_helper_get_interface_index_num(ipd_port);
 union cvmx_asxx_prt_loop asxx_prt_loop;

 asxx_prt_loop.u64 = cvmx_read_csr(CVMX_ASXX_PRT_LOOP(interface));
 if (asxx_prt_loop.s.int_loop & (1 << index)) {

  cvmx_helper_link_info_t result;
  result.u64 = 0;
  result.s.full_duplex = 1;
  result.s.link_up = 1;
  result.s.speed = 1000;
  return result;
 } else
  return __cvmx_helper_board_link_get(ipd_port);
}
