#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int* kernel_params_atinit_buf64; int kernel_wgs_atinit; void** kernel_params_atinit; int /*<<< orphan*/  opencl_command_queue; int /*<<< orphan*/  opencl_kernel_atinit; } ;
typedef  TYPE_1__ hc_device_param_t ;
typedef  int /*<<< orphan*/  hashcat_ctx_t ;
typedef  int /*<<< orphan*/  cl_ulong ;
typedef  int /*<<< orphan*/  cl_mem ;
typedef  int /*<<< orphan*/  cl_kernel ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t const*,size_t const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,void*) ; 
 int FUNC4 (int,int const) ; 

int FUNC5 (hashcat_ctx_t *hashcat_ctx, hc_device_param_t *device_param, cl_mem buf, const u64 num)
{
  u64 num_elements = num;

  device_param->kernel_params_atinit_buf64[1] = num_elements;

  const u64 kernel_threads = device_param->kernel_wgs_atinit;

  num_elements = FUNC4 (num_elements, kernel_threads);

  cl_kernel kernel = device_param->opencl_kernel_atinit;

  const size_t global_work_size[3] = { num_elements,    1, 1 };
  const size_t local_work_size[3]  = { kernel_threads,  1, 1 };

  if (FUNC3 (hashcat_ctx, kernel, 0, sizeof (cl_mem), (void *) &buf) == -1) return -1;

  if (FUNC3 (hashcat_ctx, kernel, 1, sizeof (cl_ulong), device_param->kernel_params_atinit[1]) == -1) return -1;

  if (FUNC0 (hashcat_ctx, device_param->opencl_command_queue, kernel, 1, NULL, global_work_size, local_work_size, 0, NULL, NULL) == -1) return -1;

  if (FUNC2 (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;

  if (FUNC1 (hashcat_ctx, device_param->opencl_command_queue) == -1) return -1;

  return 0;
}