
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* backend_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
typedef int cl_uint ;
typedef int cl_mem ;
typedef scalar_t__ cl_int ;
typedef int cl_event ;
typedef int cl_command_queue ;
typedef int cl_bool ;
struct TYPE_7__ {scalar_t__ ocl; } ;
typedef TYPE_2__ backend_ctx_t ;
struct TYPE_8__ {scalar_t__ (* clEnqueueWriteBuffer ) (int ,int ,int ,size_t,size_t,void const*,int ,int const*,int *) ;} ;
typedef TYPE_3__ OCL_PTR ;


 scalar_t__ const CL_SUCCESS ;
 int event_log_error (TYPE_1__*,char*,int ) ;
 scalar_t__ stub1 (int ,int ,int ,size_t,size_t,void const*,int ,int const*,int *) ;
 int val2cstr_cl (scalar_t__ const) ;

int hc_clEnqueueWriteBuffer (hashcat_ctx_t *hashcat_ctx, cl_command_queue command_queue, cl_mem buffer, cl_bool blocking_write, size_t offset, size_t size, const void *ptr, cl_uint num_events_in_wait_list, const cl_event *event_wait_list, cl_event *event)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  OCL_PTR *ocl = (OCL_PTR *) backend_ctx->ocl;

  const cl_int CL_err = ocl->clEnqueueWriteBuffer (command_queue, buffer, blocking_write, offset, size, ptr, num_events_in_wait_list, event_wait_list, event);

  if (CL_err != CL_SUCCESS)
  {
    event_log_error (hashcat_ctx, "clEnqueueWriteBuffer(): %s", val2cstr_cl (CL_err));

    return -1;
  }

  return 0;
}
