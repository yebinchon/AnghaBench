#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int slow_candidates; } ;
typedef  TYPE_1__ user_options_t ;
typedef  int u32 ;
struct TYPE_11__ {int /*<<< orphan*/  markov_css_buf; int /*<<< orphan*/  root_css_buf; int /*<<< orphan*/  css_cnt; } ;
typedef  TYPE_2__ mask_ctx_t ;
struct TYPE_12__ {int skipped; int skipped_warning; int is_cuda; int is_opencl; int /*<<< orphan*/  size_markov_css; int /*<<< orphan*/  opencl_d_markov_css_buf; int /*<<< orphan*/  opencl_command_queue; int /*<<< orphan*/  size_root_css; int /*<<< orphan*/  opencl_d_root_css_buf; int /*<<< orphan*/ * kernel_params_mp; int /*<<< orphan*/  opencl_kernel_mp; int /*<<< orphan*/  cuda_d_markov_css_buf; int /*<<< orphan*/  cuda_d_root_css_buf; int /*<<< orphan*/ * kernel_params_mp_buf32; scalar_t__* kernel_params_mp_buf64; } ;
typedef  TYPE_3__ hc_device_param_t ;
struct TYPE_13__ {TYPE_1__* user_options; TYPE_5__* backend_ctx; TYPE_2__* mask_ctx; } ;
typedef  TYPE_4__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  cl_ulong ;
typedef  int /*<<< orphan*/  cl_uint ;
struct TYPE_14__ {int enabled; int backend_devices_cnt; TYPE_3__* devices_param; } ;
typedef  TYPE_5__ backend_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  CL_TRUE ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3 (hashcat_ctx_t *hashcat_ctx)
{
  mask_ctx_t     *mask_ctx     = hashcat_ctx->mask_ctx;
  backend_ctx_t  *backend_ctx  = hashcat_ctx->backend_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  if (backend_ctx->enabled == false) return 0;

  if (user_options->slow_candidates == true) return 0;

  for (int backend_devices_idx = 0; backend_devices_idx < backend_ctx->backend_devices_cnt; backend_devices_idx++)
  {
    hc_device_param_t *device_param = &backend_ctx->devices_param[backend_devices_idx];

    if (device_param->skipped == true) continue;

    if (device_param->skipped_warning == true) continue;

    device_param->kernel_params_mp_buf64[3] = 0;
    device_param->kernel_params_mp_buf32[4] = mask_ctx->css_cnt;

    if (device_param->is_cuda == true)
    {
      //for (u32 i = 3; i < 4; i++) { CL_rc = hc_clSetKernelArg (hashcat_ctx, device_param->opencl_kernel_mp, i, sizeof (cl_ulong), device_param->kernel_params_mp[i]); if (CL_rc == -1) return -1; }
      //for (u32 i = 4; i < 8; i++) { CL_rc = hc_clSetKernelArg (hashcat_ctx, device_param->opencl_kernel_mp, i, sizeof (cl_uint),  device_param->kernel_params_mp[i]); if (CL_rc == -1) return -1; }

      if (FUNC2 (hashcat_ctx, device_param->cuda_d_root_css_buf,   mask_ctx->root_css_buf,   device_param->size_root_css)   == -1) return -1;
      if (FUNC2 (hashcat_ctx, device_param->cuda_d_markov_css_buf, mask_ctx->markov_css_buf, device_param->size_markov_css) == -1) return -1;
    }

    if (device_param->is_opencl == true)
    {
      for (u32 i = 3; i < 4; i++) { if (FUNC1 (hashcat_ctx, device_param->opencl_kernel_mp, i, sizeof (cl_ulong), device_param->kernel_params_mp[i]) == -1) return -1; }
      for (u32 i = 4; i < 8; i++) { if (FUNC1 (hashcat_ctx, device_param->opencl_kernel_mp, i, sizeof (cl_uint),  device_param->kernel_params_mp[i]) == -1) return -1; }

      if (FUNC0 (hashcat_ctx, device_param->opencl_command_queue, device_param->opencl_d_root_css_buf,   CL_TRUE, 0, device_param->size_root_css,   mask_ctx->root_css_buf,   0, NULL, NULL) == -1) return -1;
      if (FUNC0 (hashcat_ctx, device_param->opencl_command_queue, device_param->opencl_d_markov_css_buf, CL_TRUE, 0, device_param->size_markov_css, mask_ctx->markov_css_buf, 0, NULL, NULL) == -1) return -1;
    }
  }

  return 0;
}