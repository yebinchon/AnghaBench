
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int* kernel_params_buf32; int const hardware_power; double spin_damp; } ;
typedef TYPE_1__ hc_device_param_t ;
struct TYPE_10__ {scalar_t__ attack_exec; int opti_type; } ;
typedef TYPE_2__ hashconfig_t ;
struct TYPE_11__ {TYPE_2__* hashconfig; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 scalar_t__ ATTACK_EXEC_INSIDE_KERNEL ;
 int KERN_RUN_1 ;
 int KERN_RUN_2 ;
 int KERN_RUN_4 ;
 int OPTI_TYPE_OPTIMIZED_KERNEL ;
 double get_avg_exec_time (TYPE_1__*,int) ;
 int run_kernel (TYPE_3__*,TYPE_1__*,int ,int const,int,int ) ;

__attribute__((used)) static double try_run (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param, const u32 kernel_accel, const u32 kernel_loops)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;

  device_param->kernel_params_buf32[28] = 0;
  device_param->kernel_params_buf32[29] = kernel_loops;
  device_param->kernel_params_buf32[30] = kernel_loops;

  const u32 kernel_power_try = device_param->hardware_power * kernel_accel;

  const double spin_damp_sav = device_param->spin_damp;

  device_param->spin_damp = 0;

  if (hashconfig->attack_exec == ATTACK_EXEC_INSIDE_KERNEL)
  {
    if (hashconfig->opti_type & OPTI_TYPE_OPTIMIZED_KERNEL)
    {
      run_kernel (hashcat_ctx, device_param, KERN_RUN_1, kernel_power_try, 1, 0);
    }
    else
    {
      run_kernel (hashcat_ctx, device_param, KERN_RUN_4, kernel_power_try, 1, 0);
    }
  }
  else
  {
    run_kernel (hashcat_ctx, device_param, KERN_RUN_2, kernel_power_try, 1, 0);
  }

  device_param->spin_damp = spin_damp_sav;

  const double exec_msec_prev = get_avg_exec_time (device_param, 1);

  return exec_msec_prev;
}
