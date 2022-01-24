#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  mux_hwmon; } ;
typedef  TYPE_1__ status_ctx_t ;
struct TYPE_13__ {int skipped; int skipped_warning; } ;
typedef  TYPE_2__ hc_device_param_t ;
struct TYPE_14__ {TYPE_1__* status_ctx; TYPE_4__* backend_ctx; } ;
typedef  TYPE_3__ hashcat_ctx_t ;
struct TYPE_15__ {TYPE_2__* devices_param; } ;
typedef  TYPE_4__ backend_ctx_t ;

/* Variables and functions */
 scalar_t__ HCBUFSIZ_TINY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (TYPE_3__*,int const) ; 
 int FUNC4 (TYPE_3__*,int const) ; 
 int FUNC5 (TYPE_3__*,int const) ; 
 int FUNC6 (TYPE_3__*,int const) ; 
 int FUNC7 (TYPE_3__*,int const) ; 
 int FUNC8 (TYPE_3__*,int const) ; 
 scalar_t__ FUNC9 (char*,scalar_t__,char*,...) ; 

char *FUNC10 (const hashcat_ctx_t *hashcat_ctx, const int backend_devices_idx)
{
  const backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  hc_device_param_t *device_param = &backend_ctx->devices_param[backend_devices_idx];

  char *output_buf = (char *) FUNC2 (HCBUFSIZ_TINY);

  FUNC9 (output_buf, HCBUFSIZ_TINY, "N/A");

  if (device_param->skipped == true) return output_buf;

  if (device_param->skipped_warning == true) return output_buf;

  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  FUNC0 (status_ctx->mux_hwmon);

  const int num_temperature = FUNC7 ((hashcat_ctx_t *) hashcat_ctx, backend_devices_idx);
  const int num_fanspeed    = FUNC5    ((hashcat_ctx_t *) hashcat_ctx, backend_devices_idx);
  const int num_utilization = FUNC8 ((hashcat_ctx_t *) hashcat_ctx, backend_devices_idx);
  const int num_corespeed   = FUNC4   ((hashcat_ctx_t *) hashcat_ctx, backend_devices_idx);
  const int num_memoryspeed = FUNC6 ((hashcat_ctx_t *) hashcat_ctx, backend_devices_idx);
  const int num_buslanes    = FUNC3    ((hashcat_ctx_t *) hashcat_ctx, backend_devices_idx);

  int output_len = 0;

  if (num_temperature >= 0)
  {
    output_len += FUNC9 (output_buf + output_len, HCBUFSIZ_TINY - output_len, "Temp:%3dc ", num_temperature);
  }

  if (num_fanspeed >= 0)
  {
    output_len += FUNC9 (output_buf + output_len, HCBUFSIZ_TINY - output_len, "Fan:%3d%% ", num_fanspeed);
  }

  if (num_utilization >= 0)
  {
    output_len += FUNC9 (output_buf + output_len, HCBUFSIZ_TINY - output_len, "Util:%3d%% ", num_utilization);
  }

  if (num_corespeed >= 0)
  {
    output_len += FUNC9 (output_buf + output_len, HCBUFSIZ_TINY - output_len, "Core:%4dMHz ", num_corespeed);
  }

  if (num_memoryspeed >= 0)
  {
    output_len += FUNC9 (output_buf + output_len, HCBUFSIZ_TINY - output_len, "Mem:%4dMHz ", num_memoryspeed);
  }

  if (num_buslanes >= 0)
  {
    output_len += FUNC9 (output_buf + output_len, HCBUFSIZ_TINY - output_len, "Bus:%d ", num_buslanes);
  }

  if (output_len > 0)
  {
    // trims the trailing space

    output_buf[output_len - 1] = 0;
  }
  else
  {
    FUNC9 (output_buf, HCBUFSIZ_TINY, "N/A");
  }

  FUNC1 (status_ctx->mux_hwmon);

  return output_buf;
}