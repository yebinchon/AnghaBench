
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int is_cuda; int is_opencl; int opencl_command_queue; int opencl_kernel_tm; int cuda_stream; int kernel_params_tm; int cuda_function_tm; int kernel_wgs_tm; } ;
typedef TYPE_1__ hc_device_param_t ;
typedef int hashcat_ctx_t ;
typedef int cl_kernel ;
typedef int CUfunction ;


 int MIN (int const,int ) ;
 int hc_clEnqueueNDRangeKernel (int *,int ,int ,int,int *,size_t const*,size_t const*,int ,int *,int *) ;
 int hc_clFinish (int *,int ) ;
 int hc_clFlush (int *,int ) ;
 int hc_cuLaunchKernel (int *,int ,int const,int,int,int const,int,int,int ,int ,int ,int *) ;
 int hc_cuStreamSynchronize (int *,int ) ;

int run_kernel_tm (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param)
{
  const u64 num_elements = 1024;

  const u64 kernel_threads = MIN (num_elements, device_param->kernel_wgs_tm);

  if (device_param->is_cuda == 1)
  {
    CUfunction cuda_function = device_param->cuda_function_tm;

    if (hc_cuLaunchKernel (hashcat_ctx, cuda_function, num_elements / kernel_threads, 1, 1, kernel_threads, 1, 1, 0, device_param->cuda_stream, device_param->kernel_params_tm, ((void*)0)) == -1) return -1;

    if (hc_cuStreamSynchronize (hashcat_ctx, device_param->cuda_stream) == -1) return -1;
  }

  if (device_param->is_opencl == 1)
  {
    cl_kernel cuda_kernel = device_param->opencl_kernel_tm;

    const size_t global_work_size[3] = { num_elements, 1, 1 };
    const size_t local_work_size[3] = { kernel_threads, 1, 1 };

    if (hc_clEnqueueNDRangeKernel (hashcat_ctx, device_param->opencl_command_queue, cuda_kernel, 1, ((void*)0), global_work_size, local_work_size, 0, ((void*)0), ((void*)0)) == -1) return -1;

    if (hc_clFlush (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;

    if (hc_clFinish (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;
  }

  return 0;
}
