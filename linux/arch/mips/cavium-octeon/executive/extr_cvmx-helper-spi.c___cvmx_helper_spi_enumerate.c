
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 scalar_t__ cvmx_spi4000_is_present (int) ;
 TYPE_1__* cvmx_sysinfo_get () ;

int __cvmx_helper_spi_enumerate(int interface)
{
 if ((cvmx_sysinfo_get()->board_type != CVMX_BOARD_TYPE_SIM) &&
     cvmx_spi4000_is_present(interface)) {
  return 10;
 } else {
  return 16;
 }
}
