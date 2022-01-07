
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {int skipped; int is_opencl; int opencl_device_vendor; int opencl_device_c_version; int opencl_device_version; int opencl_driver_version; int device_name; } ;
typedef TYPE_1__ hc_device_param_t ;
struct TYPE_6__ {TYPE_3__* backend_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_7__ {int enabled; size_t opencl_platforms_cnt; int backend_devices_cnt; int need_adl; int need_nvml; int need_nvapi; int need_sysfs; scalar_t__ opencl_devices_active; scalar_t__ opencl_devices_cnt; scalar_t__ cuda_devices_active; scalar_t__ cuda_devices_cnt; scalar_t__ backend_devices_active; TYPE_1__* devices_param; int * opencl_platforms_version; int * opencl_platforms_vendor; int * opencl_platforms_name; int * opencl_platforms_devices; } ;
typedef TYPE_3__ backend_ctx_t ;


 int hcfree (int ) ;

void backend_ctx_devices_destroy (hashcat_ctx_t *hashcat_ctx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  if (backend_ctx->enabled == 0) return;

  for (u32 opencl_platforms_idx = 0; opencl_platforms_idx < backend_ctx->opencl_platforms_cnt; opencl_platforms_idx++)
  {
    hcfree (backend_ctx->opencl_platforms_devices[opencl_platforms_idx]);
    hcfree (backend_ctx->opencl_platforms_name[opencl_platforms_idx]);
    hcfree (backend_ctx->opencl_platforms_vendor[opencl_platforms_idx]);
    hcfree (backend_ctx->opencl_platforms_version[opencl_platforms_idx]);
  }

  for (int backend_devices_idx = 0; backend_devices_idx < backend_ctx->backend_devices_cnt; backend_devices_idx++)
  {
    hc_device_param_t *device_param = &backend_ctx->devices_param[backend_devices_idx];

    if (device_param->skipped == 1) continue;

    hcfree (device_param->device_name);

    if (device_param->is_opencl == 1)
    {
      hcfree (device_param->opencl_driver_version);
      hcfree (device_param->opencl_device_version);
      hcfree (device_param->opencl_device_c_version);
      hcfree (device_param->opencl_device_vendor);
    }
  }

  backend_ctx->backend_devices_cnt = 0;
  backend_ctx->backend_devices_active = 0;
  backend_ctx->cuda_devices_cnt = 0;
  backend_ctx->cuda_devices_active = 0;
  backend_ctx->opencl_devices_cnt = 0;
  backend_ctx->opencl_devices_active = 0;

  backend_ctx->need_adl = 0;
  backend_ctx->need_nvml = 0;
  backend_ctx->need_nvapi = 0;
  backend_ctx->need_sysfs = 0;
}
