
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int local_mem_size ;
struct TYPE_3__ {int opencl_device; } ;
typedef TYPE_1__ hc_device_param_t ;
typedef int hashcat_ctx_t ;
typedef int cl_ulong ;
typedef int cl_kernel ;


 int CL_KERNEL_LOCAL_MEM_SIZE ;
 int hc_clGetKernelWorkGroupInfo (int *,int ,int ,int ,int,int *,int *) ;

__attribute__((used)) static int get_opencl_kernel_local_mem_size (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param, cl_kernel kernel, u64 *result)
{
  cl_ulong local_mem_size = 0;

  if (hc_clGetKernelWorkGroupInfo (hashcat_ctx, kernel, device_param->opencl_device, CL_KERNEL_LOCAL_MEM_SIZE, sizeof (local_mem_size), &local_mem_size, ((void*)0)) == -1) return -1;

  *result = local_mem_size;

  return 0;
}
