
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int gpu; } ;
typedef TYPE_3__ nvmlUtilization_t ;
struct TYPE_16__ {int enabled; TYPE_2__* hm_device; scalar_t__ hm_nvml; scalar_t__ hm_adl; } ;
typedef TYPE_4__ hwmon_ctx_t ;
struct TYPE_17__ {TYPE_6__* backend_ctx; TYPE_4__* hwmon_ctx; } ;
typedef TYPE_5__ hashcat_ctx_t ;
struct TYPE_18__ {TYPE_1__* devices_param; } ;
typedef TYPE_6__ backend_ctx_t ;
struct TYPE_19__ {int iSize; int iActivityPercent; } ;
struct TYPE_14__ {int utilization_get_supported; int nvml; int adl; } ;
struct TYPE_13__ {int is_cuda; int is_opencl; int opencl_device_type; scalar_t__ opencl_device_vendor_id; } ;
typedef TYPE_7__ ADLPMActivity ;


 int CL_DEVICE_TYPE_GPU ;
 scalar_t__ VENDOR_ID_AMD ;
 scalar_t__ VENDOR_ID_NV ;
 int hm_ADL_Overdrive_CurrentActivity_Get (TYPE_5__*,int ,TYPE_7__*) ;
 int hm_NVML_nvmlDeviceGetUtilizationRates (TYPE_5__*,int ,TYPE_3__*) ;

int hm_get_utilization_with_devices_idx (hashcat_ctx_t *hashcat_ctx, const int backend_device_idx)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  if (hwmon_ctx->enabled == 0) return -1;

  if (hwmon_ctx->hm_device[backend_device_idx].utilization_get_supported == 0) return -1;

  if (backend_ctx->devices_param[backend_device_idx].is_cuda == 1)
  {
    if (hwmon_ctx->hm_nvml)
    {
      nvmlUtilization_t utilization;

      if (hm_NVML_nvmlDeviceGetUtilizationRates (hashcat_ctx, hwmon_ctx->hm_device[backend_device_idx].nvml, &utilization) == -1)
      {
        hwmon_ctx->hm_device[backend_device_idx].utilization_get_supported = 0;

        return -1;
      }

      return utilization.gpu;
    }
  }

  if (backend_ctx->devices_param[backend_device_idx].is_opencl == 1)
  {
    if ((backend_ctx->devices_param[backend_device_idx].opencl_device_type & CL_DEVICE_TYPE_GPU) == 0) return -1;

    if (backend_ctx->devices_param[backend_device_idx].opencl_device_vendor_id == VENDOR_ID_AMD)
    {
      if (hwmon_ctx->hm_adl)
      {
        ADLPMActivity PMActivity;

        PMActivity.iSize = sizeof (ADLPMActivity);

        if (hm_ADL_Overdrive_CurrentActivity_Get (hashcat_ctx, hwmon_ctx->hm_device[backend_device_idx].adl, &PMActivity) == -1)
        {
          hwmon_ctx->hm_device[backend_device_idx].utilization_get_supported = 0;

          return -1;
        }

        return PMActivity.iActivityPercent;
      }
    }

    if (backend_ctx->devices_param[backend_device_idx].opencl_device_vendor_id == VENDOR_ID_NV)
    {
      if (hwmon_ctx->hm_nvml)
      {
        nvmlUtilization_t utilization;

        if (hm_NVML_nvmlDeviceGetUtilizationRates (hashcat_ctx, hwmon_ctx->hm_device[backend_device_idx].nvml, &utilization) == -1)
        {
          hwmon_ctx->hm_device[backend_device_idx].utilization_get_supported = 0;

          return -1;
        }

        return utilization.gpu;
      }
    }
  }

  hwmon_ctx->hm_device[backend_device_idx].utilization_get_supported = 0;

  return -1;
}
