
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t cvmx_spi_mode_t ;
struct TYPE_2__ {int interface_up_cb; int calendar_sync_cb; int training_cb; int clock_detect_cb; int reset_cb; } ;


 int INVOKE_CB (int ,int,size_t,...) ;
 int OCTEON_CN38XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_dprintf (char*,int,int ) ;
 TYPE_1__ cvmx_spi_callbacks ;
 int * modes ;

int cvmx_spi_restart_interface(int interface, cvmx_spi_mode_t mode, int timeout)
{
 int res = -1;

 if (!(OCTEON_IS_MODEL(OCTEON_CN38XX) || OCTEON_IS_MODEL(OCTEON_CN58XX)))
  return res;

 cvmx_dprintf("SPI%d: Restart %s\n", interface, modes[mode]);


 INVOKE_CB(cvmx_spi_callbacks.reset_cb, interface, mode);





 INVOKE_CB(cvmx_spi_callbacks.clock_detect_cb, interface, mode, timeout);


 INVOKE_CB(cvmx_spi_callbacks.training_cb, interface, mode, timeout);


 INVOKE_CB(cvmx_spi_callbacks.calendar_sync_cb, interface, mode,
    timeout);


 INVOKE_CB(cvmx_spi_callbacks.interface_up_cb, interface, mode);

 return res;
}
