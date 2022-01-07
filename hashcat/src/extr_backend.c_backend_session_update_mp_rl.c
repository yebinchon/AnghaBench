
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int slow_candidates; } ;
typedef TYPE_1__ user_options_t ;
typedef int u32 ;
struct TYPE_11__ {int markov_css_buf; int root_css_buf; } ;
typedef TYPE_2__ mask_ctx_t ;
struct TYPE_12__ {int skipped; int skipped_warning; int* kernel_params_mp_l_buf32; int* kernel_params_mp_r_buf32; int is_cuda; int is_opencl; int size_markov_css; int opencl_d_markov_css_buf; int opencl_command_queue; int size_root_css; int opencl_d_root_css_buf; int * kernel_params_mp_r; int opencl_kernel_mp_r; int * kernel_params_mp_l; int opencl_kernel_mp_l; int cuda_d_markov_css_buf; int cuda_d_root_css_buf; scalar_t__* kernel_params_mp_r_buf64; scalar_t__* kernel_params_mp_l_buf64; } ;
typedef TYPE_3__ hc_device_param_t ;
struct TYPE_13__ {TYPE_1__* user_options; TYPE_5__* backend_ctx; TYPE_2__* mask_ctx; } ;
typedef TYPE_4__ hashcat_ctx_t ;
typedef int cl_ulong ;
typedef int cl_uint ;
struct TYPE_14__ {int enabled; int backend_devices_cnt; TYPE_3__* devices_param; } ;
typedef TYPE_5__ backend_ctx_t ;


 int CL_TRUE ;
 int hc_clEnqueueWriteBuffer (TYPE_4__*,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int hc_clSetKernelArg (TYPE_4__*,int ,int,int,int ) ;
 int hc_cuMemcpyHtoD (TYPE_4__*,int ,int ,int ) ;

int backend_session_update_mp_rl (hashcat_ctx_t *hashcat_ctx, const u32 css_cnt_l, const u32 css_cnt_r)
{
  mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  if (backend_ctx->enabled == 0) return 0;

  if (user_options->slow_candidates == 1) return 0;

  for (int backend_devices_idx = 0; backend_devices_idx < backend_ctx->backend_devices_cnt; backend_devices_idx++)
  {
    hc_device_param_t *device_param = &backend_ctx->devices_param[backend_devices_idx];

    if (device_param->skipped == 1) continue;

    if (device_param->skipped_warning == 1) continue;

    device_param->kernel_params_mp_l_buf64[3] = 0;
    device_param->kernel_params_mp_l_buf32[4] = css_cnt_l;
    device_param->kernel_params_mp_l_buf32[5] = css_cnt_r;

    device_param->kernel_params_mp_r_buf64[3] = 0;
    device_param->kernel_params_mp_r_buf32[4] = css_cnt_r;

    if (device_param->is_cuda == 1)
    {
      if (hc_cuMemcpyHtoD (hashcat_ctx, device_param->cuda_d_root_css_buf, mask_ctx->root_css_buf, device_param->size_root_css) == -1) return -1;
      if (hc_cuMemcpyHtoD (hashcat_ctx, device_param->cuda_d_markov_css_buf, mask_ctx->markov_css_buf, device_param->size_markov_css) == -1) return -1;
    }

    if (device_param->is_opencl == 1)
    {
      for (u32 i = 3; i < 4; i++) { if (hc_clSetKernelArg (hashcat_ctx, device_param->opencl_kernel_mp_l, i, sizeof (cl_ulong), device_param->kernel_params_mp_l[i]) == -1) return -1; }
      for (u32 i = 4; i < 8; i++) { if (hc_clSetKernelArg (hashcat_ctx, device_param->opencl_kernel_mp_l, i, sizeof (cl_uint), device_param->kernel_params_mp_l[i]) == -1) return -1; }
      for (u32 i = 9; i < 9; i++) { if (hc_clSetKernelArg (hashcat_ctx, device_param->opencl_kernel_mp_l, i, sizeof (cl_ulong), device_param->kernel_params_mp_l[i]) == -1) return -1; }

      for (u32 i = 3; i < 4; i++) { if (hc_clSetKernelArg (hashcat_ctx, device_param->opencl_kernel_mp_r, i, sizeof (cl_ulong), device_param->kernel_params_mp_r[i]) == -1) return -1; }
      for (u32 i = 4; i < 7; i++) { if (hc_clSetKernelArg (hashcat_ctx, device_param->opencl_kernel_mp_r, i, sizeof (cl_uint), device_param->kernel_params_mp_r[i]) == -1) return -1; }
      for (u32 i = 8; i < 8; i++) { if (hc_clSetKernelArg (hashcat_ctx, device_param->opencl_kernel_mp_r, i, sizeof (cl_ulong), device_param->kernel_params_mp_r[i]) == -1) return -1; }

      if (hc_clEnqueueWriteBuffer (hashcat_ctx, device_param->opencl_command_queue, device_param->opencl_d_root_css_buf, CL_TRUE, 0, device_param->size_root_css, mask_ctx->root_css_buf, 0, ((void*)0), ((void*)0)) == -1) return -1;
      if (hc_clEnqueueWriteBuffer (hashcat_ctx, device_param->opencl_command_queue, device_param->opencl_d_markov_css_buf, CL_TRUE, 0, device_param->size_markov_css, mask_ctx->markov_css_buf, 0, ((void*)0), ((void*)0)) == -1) return -1;
    }
  }

  return 0;
}
