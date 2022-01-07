
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brain_link_client_fd; } ;
typedef TYPE_1__ hc_device_param_t ;


 int close (int) ;

void brain_client_disconnect (hc_device_param_t *device_param)
{
  if (device_param->brain_link_client_fd > 2)
  {
    close (device_param->brain_link_client_fd);
  }

  device_param->brain_link_client_fd = -1;
}
