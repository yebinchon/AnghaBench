
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hm_nvapi; } ;
typedef TYPE_1__ hwmon_ctx_t ;
struct TYPE_9__ {TYPE_1__* hwmon_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_10__ {void* lib; } ;
typedef TYPE_3__ NVAPI_PTR ;


 int HC_LOAD_ADDR (TYPE_3__*,int ,int ,int ,int,int ,int ) ;
 int HC_LOAD_FUNC (TYPE_3__*,int ,int ,int ,int ) ;
 int NVAPI ;
 int NVAPI_ENUMPHYSICALGPUS ;
 int NVAPI_GETERRORMESSAGE ;
 int NVAPI_GPU_GETBUSID ;
 int NVAPI_GPU_GETBUSSLOTID ;
 int NVAPI_GPU_GETPERFPOLICIESINFO ;
 int NVAPI_GPU_GETPERFPOLICIESSTATUS ;
 int NVAPI_INITIALIZE ;
 int NVAPI_QUERYINTERFACE ;
 int NVAPI_UNLOAD ;
 int NvAPI_EnumPhysicalGPUs ;
 int NvAPI_GPU_GetBusId ;
 int NvAPI_GPU_GetBusSlotId ;
 int NvAPI_GPU_GetPerfPoliciesInfo ;
 int NvAPI_GPU_GetPerfPoliciesStatus ;
 int NvAPI_GetErrorMessage ;
 int NvAPI_Initialize ;
 int NvAPI_Unload ;
 void* hc_dlopen (char*) ;
 int memset (TYPE_3__*,int ,int) ;
 int nvapi_QueryInterface ;

__attribute__((used)) static int nvapi_init (hashcat_ctx_t *hashcat_ctx)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;

  NVAPI_PTR *nvapi = (NVAPI_PTR *) hwmon_ctx->hm_nvapi;

  memset (nvapi, 0, sizeof (NVAPI_PTR));
  nvapi->lib = hc_dlopen ("nvapi.so");




  if (!nvapi->lib)
  {



    return -1;
  }

  HC_LOAD_FUNC(nvapi, nvapi_QueryInterface, NVAPI_QUERYINTERFACE, NVAPI, 0);
  HC_LOAD_ADDR(nvapi, NvAPI_Initialize, NVAPI_INITIALIZE, nvapi_QueryInterface, 0x0150E828U, NVAPI, 0);
  HC_LOAD_ADDR(nvapi, NvAPI_Unload, NVAPI_UNLOAD, nvapi_QueryInterface, 0xD22BDD7EU, NVAPI, 0);
  HC_LOAD_ADDR(nvapi, NvAPI_GetErrorMessage, NVAPI_GETERRORMESSAGE, nvapi_QueryInterface, 0x6C2D048CU, NVAPI, 0);
  HC_LOAD_ADDR(nvapi, NvAPI_EnumPhysicalGPUs, NVAPI_ENUMPHYSICALGPUS, nvapi_QueryInterface, 0xE5AC921FU, NVAPI, 0);
  HC_LOAD_ADDR(nvapi, NvAPI_GPU_GetPerfPoliciesInfo, NVAPI_GPU_GETPERFPOLICIESINFO, nvapi_QueryInterface, 0x409D9841U, NVAPI, 0);
  HC_LOAD_ADDR(nvapi, NvAPI_GPU_GetPerfPoliciesStatus, NVAPI_GPU_GETPERFPOLICIESSTATUS, nvapi_QueryInterface, 0x3D358A0CU, NVAPI, 0);
  HC_LOAD_ADDR(nvapi, NvAPI_GPU_GetBusId, NVAPI_GPU_GETBUSID, nvapi_QueryInterface, 0x1BE0B8E5U, NVAPI, 0);
  HC_LOAD_ADDR(nvapi, NvAPI_GPU_GetBusSlotId, NVAPI_GPU_GETBUSSLOTID, nvapi_QueryInterface, 0x2A0A350FU, NVAPI, 0);

  return 0;
}
