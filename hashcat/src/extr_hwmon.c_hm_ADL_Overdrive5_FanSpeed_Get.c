
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hm_adl; } ;
typedef TYPE_1__ hwmon_ctx_t ;
struct TYPE_7__ {TYPE_1__* hwmon_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_8__ {int (* ADL_Overdrive5_FanSpeed_Get ) (int,int,int *) ;} ;
typedef TYPE_3__ ADL_PTR ;
typedef int ADLFanSpeedValue ;


 int const ADL_ERR_NOT_SUPPORTED ;
 int const ADL_OK ;
 int event_log_error (TYPE_2__*,char*,int const) ;
 int stub1 (int,int,int *) ;

__attribute__((used)) static int hm_ADL_Overdrive5_FanSpeed_Get (hashcat_ctx_t *hashcat_ctx, int iAdapterIndex, int iThermalControllerIndex, ADLFanSpeedValue *lpFanSpeedValue)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;

  ADL_PTR *adl = (ADL_PTR *) hwmon_ctx->hm_adl;

  const int ADL_rc = adl->ADL_Overdrive5_FanSpeed_Get (iAdapterIndex, iThermalControllerIndex, lpFanSpeedValue);

  if ((ADL_rc != ADL_OK) && (ADL_rc != ADL_ERR_NOT_SUPPORTED))
  {
    event_log_error (hashcat_ctx, "ADL_Overdrive5_FanSpeed_Get(): %d", ADL_rc);

    return -1;
  }

  return 0;
}
