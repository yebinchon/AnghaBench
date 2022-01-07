
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int kernel_power; scalar_t__ hardware_power; } ;
typedef TYPE_1__ hc_device_param_t ;
struct TYPE_6__ {int kernel_power_final; double hardware_power_all; } ;
typedef TYPE_2__ backend_ctx_t ;


 int CEIL (int const) ;
 int MAX (int const,scalar_t__) ;
 int MIN (int const,int) ;

__attribute__((used)) static u64 get_power (backend_ctx_t *backend_ctx, hc_device_param_t *device_param)
{
  const u64 kernel_power_final = backend_ctx->kernel_power_final;

  if (kernel_power_final)
  {
    const double device_factor = (double) device_param->hardware_power / backend_ctx->hardware_power_all;

    const u64 words_left_device = (u64) CEIL (kernel_power_final * device_factor);



    const u64 work = MAX (words_left_device, device_param->hardware_power);



    const u64 work_final = MIN (work, device_param->kernel_power);

    return work_final;
  }

  return device_param->kernel_power;
}
