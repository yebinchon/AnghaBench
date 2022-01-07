
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ hm_nvapi; } ;
typedef TYPE_1__ hwmon_ctx_t ;
struct TYPE_11__ {TYPE_1__* hwmon_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_13__ {int (* NvAPI_GPU_GetPerfPoliciesStatus ) (int ,int *) ;} ;
struct TYPE_12__ {int member_0; } ;
typedef int NvPhysicalGpuHandle ;
typedef scalar_t__ NvAPI_Status ;
typedef TYPE_3__ NvAPI_ShortString ;
typedef int NV_GPU_PERF_POLICIES_STATUS_PARAMS_V1 ;
typedef TYPE_4__ NVAPI_PTR ;


 scalar_t__ const NVAPI_OK ;
 int event_log_error (TYPE_2__*,char*,TYPE_3__) ;
 int hm_NvAPI_GetErrorMessage (TYPE_4__*,scalar_t__ const,TYPE_3__) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static int hm_NvAPI_GPU_GetPerfPoliciesStatus (hashcat_ctx_t *hashcat_ctx, NvPhysicalGpuHandle hPhysicalGpu, NV_GPU_PERF_POLICIES_STATUS_PARAMS_V1 *perfPolicies_status)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;

  NVAPI_PTR *nvapi = (NVAPI_PTR *) hwmon_ctx->hm_nvapi;

  const NvAPI_Status NvAPI_rc = (NvAPI_Status) nvapi->NvAPI_GPU_GetPerfPoliciesStatus (hPhysicalGpu, perfPolicies_status);

  if (NvAPI_rc != NVAPI_OK)
  {
    NvAPI_ShortString string = { 0 };

    hm_NvAPI_GetErrorMessage (nvapi, NvAPI_rc, string);

    event_log_error (hashcat_ctx, "NvAPI_GPU_GetPerfPoliciesStatus(): %s", string);

    return -1;
  }

  return 0;
}
