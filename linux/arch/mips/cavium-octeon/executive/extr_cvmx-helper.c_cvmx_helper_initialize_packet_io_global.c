
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rfb_arb_mode; scalar_t__ lrf_arb_mode; } ;
union cvmx_l2c_cfg {int u64; TYPE_1__ s; } ;


 int CVMX_L2C_CFG ;
 int OCTEON_CN52XX_PASS1_0 ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_helper_errata_qlm_disable_2nd_order_cdr (int) ;
 int __cvmx_helper_global_setup_backpressure () ;
 int __cvmx_helper_global_setup_ipd () ;
 int __cvmx_helper_global_setup_pko () ;
 int __cvmx_helper_interface_setup_ipd (int) ;
 int __cvmx_helper_interface_setup_pko (int) ;
 int cvmx_dprintf (char*,int,scalar_t__,int ) ;
 int cvmx_helper_get_number_of_interfaces () ;
 int cvmx_helper_interface_get_mode (int) ;
 int cvmx_helper_interface_mode_to_string (int ) ;
 int cvmx_helper_interface_probe (int) ;
 int cvmx_helper_ipd_and_packet_input_enable () ;
 scalar_t__ cvmx_helper_ports_on_interface (int) ;
 int cvmx_pko_initialize_global () ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

int cvmx_helper_initialize_packet_io_global(void)
{
 int result = 0;
 int interface;
 union cvmx_l2c_cfg l2c_cfg;
 const int num_interfaces = cvmx_helper_get_number_of_interfaces();





 if (OCTEON_IS_MODEL(OCTEON_CN52XX_PASS1_0))
  __cvmx_helper_errata_qlm_disable_2nd_order_cdr(1);






 l2c_cfg.u64 = cvmx_read_csr(CVMX_L2C_CFG);
 l2c_cfg.s.lrf_arb_mode = 0;
 l2c_cfg.s.rfb_arb_mode = 0;
 cvmx_write_csr(CVMX_L2C_CFG, l2c_cfg.u64);

 cvmx_pko_initialize_global();
 for (interface = 0; interface < num_interfaces; interface++) {
  result |= cvmx_helper_interface_probe(interface);
  if (cvmx_helper_ports_on_interface(interface) > 0)
   cvmx_dprintf("Interface %d has %d ports (%s)\n",
         interface,
         cvmx_helper_ports_on_interface(interface),
         cvmx_helper_interface_mode_to_string
         (cvmx_helper_interface_get_mode
          (interface)));
  result |= __cvmx_helper_interface_setup_ipd(interface);
  result |= __cvmx_helper_interface_setup_pko(interface);
 }

 result |= __cvmx_helper_global_setup_ipd();
 result |= __cvmx_helper_global_setup_pko();


 result |= __cvmx_helper_global_setup_backpressure();




 return result;
}
