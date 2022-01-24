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
typedef  int /*<<< orphan*/  cl_uint ;
typedef  int /*<<< orphan*/  cl_mem ;
typedef  int /*<<< orphan*/  cl_map_flags ;
typedef  scalar_t__ cl_int ;
typedef  int /*<<< orphan*/  cl_event ;
typedef  int /*<<< orphan*/  cl_command_queue ;
typedef  int /*<<< orphan*/  cl_bool ;
struct TYPE_7__ {scalar_t__ ocl; } ;
typedef  TYPE_2__ backend_ctx_t ;
struct TYPE_8__ {void* (* clEnqueueMapBuffer ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,scalar_t__*) ;} ;
typedef  TYPE_3__ OCL_PTR ;

/* Variables and functions */
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

int FUNC3 (hashcat_ctx_t *hashcat_ctx, cl_command_queue command_queue, cl_mem buffer, cl_bool blocking_map, cl_map_flags map_flags, size_t offset, size_t size, cl_uint num_events_in_wait_list, const cl_event *event_wait_list, cl_event *event, void **buf)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  OCL_PTR *ocl = (OCL_PTR *) backend_ctx->ocl;

  cl_int CL_err;

  *buf = ocl->clEnqueueMapBuffer (command_queue, buffer, blocking_map, map_flags, offset, size, num_events_in_wait_list, event_wait_list, event, &CL_err);

  if (CL_err != CL_SUCCESS)
  {
    FUNC0 (hashcat_ctx, "clEnqueueMapBuffer(): %s", FUNC2 (CL_err));

    return -1;
  }

  return 0;
}