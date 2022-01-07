
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int hashcat_ctx_t ;
typedef int HM_ADAPTER_NVML ;


 int event_log_error (int *,char*) ;
 int hm_NVML_nvmlDeviceGetCount (int *,unsigned int*) ;
 int hm_NVML_nvmlDeviceGetHandleByIndex (int *,unsigned int,int *) ;

__attribute__((used)) static int hm_get_adapter_index_nvml (hashcat_ctx_t *hashcat_ctx, HM_ADAPTER_NVML *nvmlGPUHandle)
{
  unsigned int deviceCount = 0;

  hm_NVML_nvmlDeviceGetCount (hashcat_ctx, &deviceCount);

  if (deviceCount == 0)
  {
    event_log_error (hashcat_ctx, "No NVML adapters found.");

    return 0;
  }

  for (u32 i = 0; i < deviceCount; i++)
  {
    if (hm_NVML_nvmlDeviceGetHandleByIndex (hashcat_ctx, i, &nvmlGPUHandle[i]) == -1) break;




  }

  return (deviceCount);
}
