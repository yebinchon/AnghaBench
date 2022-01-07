
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int hc_device_param_t ;
typedef int hashcat_ctx_t ;
typedef int CUdeviceptr ;


 int run_cuda_kernel_memset (int *,int *,int ,int ,int const) ;

int run_cuda_kernel_bzero (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param, CUdeviceptr buf, const u64 size)
{
  return run_cuda_kernel_memset (hashcat_ctx, device_param, buf, 0, size);
}
