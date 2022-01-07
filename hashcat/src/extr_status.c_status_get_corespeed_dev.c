
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mux_hwmon; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_8__ {int skipped; int skipped_warning; } ;
typedef TYPE_2__ hc_device_param_t ;
struct TYPE_9__ {TYPE_1__* status_ctx; TYPE_4__* backend_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;
struct TYPE_10__ {TYPE_2__* devices_param; } ;
typedef TYPE_4__ backend_ctx_t ;


 int hc_thread_mutex_lock (int ) ;
 int hc_thread_mutex_unlock (int ) ;
 int hm_get_corespeed_with_devices_idx (TYPE_3__*,int const) ;

int status_get_corespeed_dev (const hashcat_ctx_t *hashcat_ctx, const int backend_devices_idx)
{
  const backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  hc_device_param_t *device_param = &backend_ctx->devices_param[backend_devices_idx];

  if (device_param->skipped == 1) return -1;

  if (device_param->skipped_warning == 1) return -1;

  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  hc_thread_mutex_lock (status_ctx->mux_hwmon);

  const int num_corespeed = hm_get_corespeed_with_devices_idx ((hashcat_ctx_t *) hashcat_ctx, backend_devices_idx);

  hc_thread_mutex_unlock (status_ctx->mux_hwmon);

  return num_corespeed;
}
