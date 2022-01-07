
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int* kernel_params_decompress_buf64; int kernel_wgs_decompress; int is_cuda; int is_opencl; int opencl_command_queue; int * kernel_params_decompress; int opencl_kernel_decompress; int cuda_stream; int cuda_function_decompress; } ;
typedef TYPE_1__ hc_device_param_t ;
typedef int hashcat_ctx_t ;
typedef int cl_ulong ;
typedef int cl_kernel ;
typedef int CUfunction ;


 int CEILDIV (int,int const) ;
 int hc_clEnqueueNDRangeKernel (int *,int ,int ,int,int *,size_t const*,size_t const*,int ,int *,int *) ;
 int hc_clFinish (int *,int ) ;
 int hc_clFlush (int *,int ) ;
 int hc_clSetKernelArg (int *,int ,int,int,int ) ;
 int hc_cuLaunchKernel (int *,int ,int,int,int,int const,int,int,int ,int ,int *,int *) ;
 int hc_cuStreamSynchronize (int *,int ) ;
 int round_up_multiple_64 (int,int const) ;

int run_kernel_decompress (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param, const u64 num)
{
  device_param->kernel_params_decompress_buf64[3] = num;

  u64 num_elements = num;

  const u64 kernel_threads = device_param->kernel_wgs_decompress;

  if (device_param->is_cuda == 1)
  {
    num_elements = CEILDIV (num_elements, kernel_threads);

    CUfunction cuda_function = device_param->cuda_function_decompress;

    if (hc_cuLaunchKernel (hashcat_ctx, cuda_function, num_elements, 1, 1, kernel_threads, 1, 1, 0, device_param->cuda_stream, device_param->kernel_params_decompress, ((void*)0)) == -1) return -1;

    if (hc_cuStreamSynchronize (hashcat_ctx, device_param->cuda_stream) == -1) return -1;
  }

  if (device_param->is_opencl == 1)
  {
    num_elements = round_up_multiple_64 (num_elements, kernel_threads);

    cl_kernel opencl_kernel = device_param->opencl_kernel_decompress;

    const size_t global_work_size[3] = { num_elements, 1, 1 };
    const size_t local_work_size[3] = { kernel_threads, 1, 1 };

    if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 3, sizeof (cl_ulong), device_param->kernel_params_decompress[3]) == -1) return -1;

    if (hc_clEnqueueNDRangeKernel (hashcat_ctx, device_param->opencl_command_queue, opencl_kernel, 1, ((void*)0), global_work_size, local_work_size, 0, ((void*)0), ((void*)0)) == -1) return -1;

    if (hc_clFlush (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;

    if (hc_clFinish (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;
  }

  return 0;
}
