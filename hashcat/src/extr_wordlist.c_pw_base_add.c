
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pw_pre_t ;
struct TYPE_3__ {scalar_t__ pws_base_cnt; scalar_t__ kernel_power; scalar_t__ pws_base_buf; } ;
typedef TYPE_1__ hc_device_param_t ;


 int fprintf (int ,char*) ;
 int memcpy (scalar_t__,int *,int) ;
 int stderr ;

void pw_base_add (hc_device_param_t *device_param, pw_pre_t *pw_pre)
{
  if (device_param->pws_base_cnt < device_param->kernel_power)
  {
    memcpy (device_param->pws_base_buf + device_param->pws_base_cnt, pw_pre, sizeof (pw_pre_t));

    device_param->pws_base_cnt++;
  }
  else
  {
    fprintf (stderr, "BUG pw_base_add()!!\n");

    return;
  }
}
