
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int enabled; int hm_device; int od_clock_mem_status; scalar_t__ hm_sysfs; scalar_t__ hm_adl; scalar_t__ hm_nvapi; scalar_t__ hm_nvml; } ;
typedef TYPE_1__ hwmon_ctx_t ;
struct TYPE_13__ {TYPE_1__* hwmon_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int adl_close (TYPE_2__*) ;
 int hcfree (int ) ;
 int hm_ADL_Main_Control_Destroy (TYPE_2__*) ;
 int hm_NVML_nvmlShutdown (TYPE_2__*) ;
 int hm_NvAPI_Unload (TYPE_2__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int nvapi_close (TYPE_2__*) ;
 int nvml_close (TYPE_2__*) ;
 int sysfs_close (TYPE_2__*) ;

void hwmon_ctx_destroy (hashcat_ctx_t *hashcat_ctx)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;

  if (hwmon_ctx->enabled == 0) return;



  if (hwmon_ctx->hm_nvml)
  {
    hm_NVML_nvmlShutdown (hashcat_ctx);

    nvml_close (hashcat_ctx);
  }

  if (hwmon_ctx->hm_nvapi)
  {
    hm_NvAPI_Unload (hashcat_ctx);

    nvapi_close (hashcat_ctx);
  }

  if (hwmon_ctx->hm_adl)
  {
    hm_ADL_Main_Control_Destroy (hashcat_ctx);

    adl_close (hashcat_ctx);
  }

  if (hwmon_ctx->hm_sysfs)
  {

    sysfs_close (hashcat_ctx);
  }



  hcfree (hwmon_ctx->od_clock_mem_status);

  hcfree (hwmon_ctx->hm_device);

  memset (hwmon_ctx, 0, sizeof (hwmon_ctx_t));
}
