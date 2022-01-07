
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 int OCTEON_CN30XX_PASS1 ;
 int OCTEON_CN31XX_PASS1 ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_helper_errata_fix_ipd_ptr_alignment () ;
 int __cvmx_helper_packet_hardware_enable (int) ;
 int cvmx_helper_get_number_of_interfaces () ;
 scalar_t__ cvmx_helper_ports_on_interface (int) ;
 int cvmx_ipd_enable () ;
 int cvmx_pko_enable () ;
 TYPE_1__* cvmx_sysinfo_get () ;

int cvmx_helper_ipd_and_packet_input_enable(void)
{
 int num_interfaces;
 int interface;


 cvmx_ipd_enable();






 num_interfaces = cvmx_helper_get_number_of_interfaces();
 for (interface = 0; interface < num_interfaces; interface++) {
  if (cvmx_helper_ports_on_interface(interface) > 0)
   __cvmx_helper_packet_hardware_enable(interface);
 }


 cvmx_pko_enable();

 if ((OCTEON_IS_MODEL(OCTEON_CN31XX_PASS1)
      || OCTEON_IS_MODEL(OCTEON_CN30XX_PASS1))
     && (cvmx_sysinfo_get()->board_type != CVMX_BOARD_TYPE_SIM))
  __cvmx_helper_errata_fix_ipd_ptr_alignment();
 return 0;
}
