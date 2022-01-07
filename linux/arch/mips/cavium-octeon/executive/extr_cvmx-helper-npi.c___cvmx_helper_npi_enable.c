
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ minerr_en; scalar_t__ maxerr_en; } ;
union cvmx_pip_prt_cfgx {int u64; TYPE_1__ s; } ;


 int CVMX_PIP_PRT_CFGX (int) ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN58XX ;
 int OCTEON_IS_MODEL (int ) ;
 int cvmx_helper_get_ipd_port (int,int) ;
 int cvmx_helper_ports_on_interface (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

int __cvmx_helper_npi_enable(int interface)
{





 if (!OCTEON_IS_MODEL(OCTEON_CN3XXX) &&
     !OCTEON_IS_MODEL(OCTEON_CN58XX)) {
  int num_ports = cvmx_helper_ports_on_interface(interface);
  int port;
  for (port = 0; port < num_ports; port++) {
   union cvmx_pip_prt_cfgx port_cfg;
   int ipd_port =
       cvmx_helper_get_ipd_port(interface, port);
   port_cfg.u64 =
       cvmx_read_csr(CVMX_PIP_PRT_CFGX(ipd_port));
   port_cfg.s.maxerr_en = 0;
   port_cfg.s.minerr_en = 0;
   cvmx_write_csr(CVMX_PIP_PRT_CFGX(ipd_port),
           port_cfg.u64);
  }
 }


 return 0;
}
