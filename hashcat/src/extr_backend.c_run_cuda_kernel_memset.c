
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int* kernel_params_memset_buf64; int kernel_wgs_memset; int cuda_stream; void** kernel_params_memset; int cuda_function_memset; int * kernel_params_memset_buf32; } ;
typedef TYPE_1__ hc_device_param_t ;
typedef int hashcat_ctx_t ;
typedef int CUfunction ;
typedef scalar_t__ CUdeviceptr ;


 int CEILDIV (int,int const) ;
 int hc_cuLaunchKernel (int *,int ,int,int,int,int const,int,int,int ,int ,void**,int *) ;
 int hc_cuMemcpyHtoD (int *,scalar_t__,int *,int const) ;
 int hc_cuStreamSynchronize (int *,int ) ;

int run_cuda_kernel_memset (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param, CUdeviceptr buf, const u32 value, const u64 size)
{
  const u64 num16d = size / 16;
  const u64 num16m = size % 16;

  if (num16d)
  {
    device_param->kernel_params_memset[0] = (void *) &buf;
    device_param->kernel_params_memset_buf32[1] = value;
    device_param->kernel_params_memset_buf64[2] = num16d;

    const u64 kernel_threads = device_param->kernel_wgs_memset;

    u64 num_elements = num16d;

    num_elements = CEILDIV (num_elements, kernel_threads);

    CUfunction function = device_param->cuda_function_memset;
    if (hc_cuLaunchKernel (hashcat_ctx, function, num_elements, 1, 1, kernel_threads, 1, 1, 0, device_param->cuda_stream, device_param->kernel_params_memset, ((void*)0)) == -1) return -1;

    if (hc_cuStreamSynchronize (hashcat_ctx, device_param->cuda_stream) == -1) return -1;
  }

  if (num16m)
  {
    u32 tmp[4];

    tmp[0] = value;
    tmp[1] = value;
    tmp[2] = value;
    tmp[3] = value;



    if (hc_cuMemcpyHtoD (hashcat_ctx, buf + (num16d * 16), tmp, num16m) == -1) return -1;
  }

  return 0;
}
