
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int qos_mask; int eid; int pid; scalar_t__ static_p; } ;
union cvmx_pko_mem_port_ptrs {scalar_t__ u64; TYPE_1__ s; } ;
struct TYPE_4__ {int en; } ;
union cvmx_gmxx_inf_mode {scalar_t__ u64; TYPE_2__ s; } ;


 int CVMX_GMXX_INF_MODE (int) ;
 int CVMX_PKO_MEM_PORT_PTRS ;
 int __cvmx_helper_setup_gmx (int,int) ;
 int __cvmx_helper_xaui_enumerate (int) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

int __cvmx_helper_xaui_probe(int interface)
{
 int i;
 union cvmx_gmxx_inf_mode mode;






 mode.u64 = cvmx_read_csr(CVMX_GMXX_INF_MODE(interface));
 mode.s.en = 1;
 cvmx_write_csr(CVMX_GMXX_INF_MODE(interface), mode.u64);

 __cvmx_helper_setup_gmx(interface, 1);







 for (i = 0; i < 16; i++) {
  union cvmx_pko_mem_port_ptrs pko_mem_port_ptrs;
  pko_mem_port_ptrs.u64 = 0;




  pko_mem_port_ptrs.s.static_p = 0;
  pko_mem_port_ptrs.s.qos_mask = 0xff;

  pko_mem_port_ptrs.s.eid = interface * 4;
  pko_mem_port_ptrs.s.pid = interface * 16 + i;
  cvmx_write_csr(CVMX_PKO_MEM_PORT_PTRS, pko_mem_port_ptrs.u64);
 }
 return __cvmx_helper_xaui_enumerate(interface);
}
