#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* backend_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  cl_kernel_work_group_info ;
typedef  int /*<<< orphan*/  cl_kernel ;
typedef  scalar_t__ cl_int ;
typedef  int /*<<< orphan*/  cl_device_id ;
struct TYPE_7__ {scalar_t__ ocl; } ;
typedef  TYPE_2__ backend_ctx_t ;
struct TYPE_8__ {scalar_t__ (* clGetKernelWorkGroupInfo ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,void*,size_t*) ;} ;
typedef  TYPE_3__ OCL_PTR ;

/* Variables and functions */
 scalar_t__ const CL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,void*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const) ; 

int FUNC3 (hashcat_ctx_t *hashcat_ctx, cl_kernel kernel, cl_device_id device, cl_kernel_work_group_info param_name, size_t param_value_size, void *param_value, size_t *param_value_size_ret)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  OCL_PTR *ocl = (OCL_PTR *) backend_ctx->ocl;

  const cl_int CL_err = ocl->clGetKernelWorkGroupInfo (kernel, device, param_name, param_value_size, param_value, param_value_size_ret);

  if (CL_err != CL_SUCCESS)
  {
    FUNC0 (hashcat_ctx, "clGetKernelWorkGroupInfo(): %s", FUNC2 (CL_err));

    return -1;
  }

  return 0;
}