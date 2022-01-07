
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int kernel_wgs_mp; int kernel_wgs_mp_r; int kernel_wgs_mp_l; int* kernel_params_mp_buf64; int* kernel_params_mp_r_buf64; int* kernel_params_mp_l_buf64; int is_cuda; void** kernel_params_mp; void** kernel_params_mp_r; void** kernel_params_mp_l; int is_opencl; int opencl_command_queue; int * opencl_kernel_mp_l; int * opencl_kernel_mp_r; int * opencl_kernel_mp; int cuda_stream; int * cuda_function_mp_l; int * cuda_function_mp_r; int * cuda_function_mp; } ;
typedef TYPE_1__ hc_device_param_t ;
typedef int hashcat_ctx_t ;
typedef int cl_ulong ;
typedef int cl_uint ;
typedef int * cl_kernel ;
typedef int * CUfunction ;


 int CEILDIV (int,int) ;



 int hc_clEnqueueNDRangeKernel (int *,int ,int *,int,int *,size_t const*,size_t const*,int ,int *,int *) ;
 int hc_clFinish (int *,int ) ;
 int hc_clFlush (int *,int ) ;
 int hc_clSetKernelArg (int *,int *,int,int,void*) ;
 int hc_cuLaunchKernel (int *,int *,int,int,int,int,int,int,int ,int ,void**,int *) ;
 int hc_cuStreamSynchronize (int *,int ) ;
 int round_up_multiple_64 (int,int) ;

int run_kernel_mp (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param, const u32 kern_run, const u64 num)
{
  u64 kernel_threads = 0;

  switch (kern_run)
  {
    case 130: kernel_threads = device_param->kernel_wgs_mp; break;
    case 128: kernel_threads = device_param->kernel_wgs_mp_r; break;
    case 129: kernel_threads = device_param->kernel_wgs_mp_l; break;
  }

  u64 num_elements = num;

  switch (kern_run)
  {
    case 130: device_param->kernel_params_mp_buf64[8] = num; break;
    case 128: device_param->kernel_params_mp_r_buf64[8] = num; break;
    case 129: device_param->kernel_params_mp_l_buf64[9] = num; break;
  }

  if (device_param->is_cuda == 1)
  {
    CUfunction cuda_function = ((void*)0);

    void **cuda_args = ((void*)0);

    switch (kern_run)
    {
      case 130: cuda_function = device_param->cuda_function_mp;
                          cuda_args = device_param->kernel_params_mp;
                          break;
      case 128: cuda_function = device_param->cuda_function_mp_r;
                          cuda_args = device_param->kernel_params_mp_r;
                          break;
      case 129: cuda_function = device_param->cuda_function_mp_l;
                          cuda_args = device_param->kernel_params_mp_l;
                          break;
    }

    num_elements = CEILDIV (num_elements, kernel_threads);

    if (hc_cuLaunchKernel (hashcat_ctx, cuda_function, num_elements, 1, 1, kernel_threads, 1, 1, 0, device_param->cuda_stream, cuda_args, ((void*)0)) == -1) return -1;

    if (hc_cuStreamSynchronize (hashcat_ctx, device_param->cuda_stream) == -1) return -1;
  }

  if (device_param->is_opencl == 1)
  {
    cl_kernel opencl_kernel = ((void*)0);

    switch (kern_run)
    {
      case 130: opencl_kernel = device_param->opencl_kernel_mp; break;
      case 128: opencl_kernel = device_param->opencl_kernel_mp_r; break;
      case 129: opencl_kernel = device_param->opencl_kernel_mp_l; break;
    }

    switch (kern_run)
    {
      case 130: if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 3, sizeof (cl_ulong), device_param->kernel_params_mp[3]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 4, sizeof (cl_uint), device_param->kernel_params_mp[4]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 5, sizeof (cl_uint), device_param->kernel_params_mp[5]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 6, sizeof (cl_uint), device_param->kernel_params_mp[6]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 7, sizeof (cl_uint), device_param->kernel_params_mp[7]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 8, sizeof (cl_ulong), device_param->kernel_params_mp[8]) == -1) return -1;
                          break;
      case 128: if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 3, sizeof (cl_ulong), device_param->kernel_params_mp_r[3]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 4, sizeof (cl_uint), device_param->kernel_params_mp_r[4]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 5, sizeof (cl_uint), device_param->kernel_params_mp_r[5]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 6, sizeof (cl_uint), device_param->kernel_params_mp_r[6]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 7, sizeof (cl_uint), device_param->kernel_params_mp_r[7]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 8, sizeof (cl_ulong), device_param->kernel_params_mp_r[8]) == -1) return -1;
                          break;
      case 129: if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 3, sizeof (cl_ulong), device_param->kernel_params_mp_l[3]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 4, sizeof (cl_uint), device_param->kernel_params_mp_l[4]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 5, sizeof (cl_uint), device_param->kernel_params_mp_l[5]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 6, sizeof (cl_uint), device_param->kernel_params_mp_l[6]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 7, sizeof (cl_uint), device_param->kernel_params_mp_l[7]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 8, sizeof (cl_uint), device_param->kernel_params_mp_l[8]) == -1) return -1;
                          if (hc_clSetKernelArg (hashcat_ctx, opencl_kernel, 9, sizeof (cl_ulong), device_param->kernel_params_mp_l[9]) == -1) return -1;
                          break;
    }

    num_elements = round_up_multiple_64 (num_elements, kernel_threads);

    const size_t global_work_size[3] = { num_elements, 1, 1 };
    const size_t local_work_size[3] = { kernel_threads, 1, 1 };

    if (hc_clEnqueueNDRangeKernel (hashcat_ctx, device_param->opencl_command_queue, opencl_kernel, 1, ((void*)0), global_work_size, local_work_size, 0, ((void*)0), ((void*)0)) == -1) return -1;

    if (hc_clFlush (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;

    if (hc_clFinish (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;
  }

  return 0;
}
