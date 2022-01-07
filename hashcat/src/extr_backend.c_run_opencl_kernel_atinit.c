
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int* kernel_params_atinit_buf64; int kernel_wgs_atinit; void** kernel_params_atinit; int opencl_command_queue; int opencl_kernel_atinit; } ;
typedef TYPE_1__ hc_device_param_t ;
typedef int hashcat_ctx_t ;
typedef int cl_ulong ;
typedef int cl_mem ;
typedef int cl_kernel ;


 int hc_clEnqueueNDRangeKernel (int *,int ,int ,int,int *,size_t const*,size_t const*,int ,int *,int *) ;
 int hc_clFinish (int *,int ) ;
 int hc_clFlush (int *,int ) ;
 int hc_clSetKernelArg (int *,int ,int,int,void*) ;
 int round_up_multiple_64 (int,int const) ;

int run_opencl_kernel_atinit (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param, cl_mem buf, const u64 num)
{
  u64 num_elements = num;

  device_param->kernel_params_atinit_buf64[1] = num_elements;

  const u64 kernel_threads = device_param->kernel_wgs_atinit;

  num_elements = round_up_multiple_64 (num_elements, kernel_threads);

  cl_kernel kernel = device_param->opencl_kernel_atinit;

  const size_t global_work_size[3] = { num_elements, 1, 1 };
  const size_t local_work_size[3] = { kernel_threads, 1, 1 };

  if (hc_clSetKernelArg (hashcat_ctx, kernel, 0, sizeof (cl_mem), (void *) &buf) == -1) return -1;

  if (hc_clSetKernelArg (hashcat_ctx, kernel, 1, sizeof (cl_ulong), device_param->kernel_params_atinit[1]) == -1) return -1;

  if (hc_clEnqueueNDRangeKernel (hashcat_ctx, device_param->opencl_command_queue, kernel, 1, ((void*)0), global_work_size, local_work_size, 0, ((void*)0), ((void*)0)) == -1) return -1;

  if (hc_clFlush (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;

  if (hc_clFinish (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;

  return 0;
}
