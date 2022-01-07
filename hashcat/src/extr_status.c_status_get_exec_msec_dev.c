
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int skipped; int skipped_warning; } ;
typedef TYPE_1__ hc_device_param_t ;
struct TYPE_7__ {TYPE_3__* backend_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_8__ {TYPE_1__* devices_param; } ;
typedef TYPE_3__ backend_ctx_t ;


 int EXEC_CACHE ;
 double get_avg_exec_time (TYPE_1__*,int ) ;

double status_get_exec_msec_dev (const hashcat_ctx_t *hashcat_ctx, const int backend_devices_idx)
{
  const backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  hc_device_param_t *device_param = &backend_ctx->devices_param[backend_devices_idx];

  double exec_dev_msec = 0;

  if ((device_param->skipped == 0) && (device_param->skipped_warning == 0))
  {
    exec_dev_msec = get_avg_exec_time (device_param, EXEC_CACHE);
  }

  return exec_dev_msec;
}
