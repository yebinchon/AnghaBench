#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int machine_readable; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_14__ {int device_info_cnt; int device_info_active; int /*<<< orphan*/  speed_sec_all; TYPE_4__* device_info_buf; } ;
typedef  TYPE_2__ hashcat_status_t ;
struct TYPE_15__ {TYPE_1__* user_options; } ;
typedef  TYPE_3__ hashcat_ctx_t ;
struct TYPE_16__ {int skipped_dev; int skipped_warning_dev; int /*<<< orphan*/  vector_width_dev; int /*<<< orphan*/  kernel_threads_dev; int /*<<< orphan*/  kernel_loops_dev; int /*<<< orphan*/  kernel_accel_dev; int /*<<< orphan*/  exec_msec_dev; int /*<<< orphan*/  speed_sec_dev; } ;
typedef  TYPE_4__ device_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int,...) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 

void FUNC6 (hashcat_ctx_t *hashcat_ctx)
{
  const user_options_t *user_options = hashcat_ctx->user_options;

  if (user_options->machine_readable == true)
  {
    FUNC4 (hashcat_ctx);

    return;
  }

  hashcat_status_t *hashcat_status = (hashcat_status_t *) FUNC3 (sizeof (hashcat_status_t));

  if (FUNC1 (hashcat_ctx, hashcat_status) == -1)
  {
    FUNC2 (hashcat_status);

    return;
  }

  for (int device_id = 0; device_id < hashcat_status->device_info_cnt; device_id++)
  {
    const device_info_t *device_info = hashcat_status->device_info_buf + device_id;

    if (device_info->skipped_dev == true) continue;

    if (device_info->skipped_warning_dev == true) continue;

    FUNC0 (hashcat_ctx,
      "Speed.#%d.........: %9sH/s (%0.2fms) @ Accel:%d Loops:%d Thr:%d Vec:%d", device_id + 1,
      device_info->speed_sec_dev,
      device_info->exec_msec_dev,
      device_info->kernel_accel_dev,
      device_info->kernel_loops_dev,
      device_info->kernel_threads_dev,
      device_info->vector_width_dev);
  }

  if (hashcat_status->device_info_active > 1)
  {
    FUNC0 (hashcat_ctx,
      "Speed.#*.........: %9sH/s",
      hashcat_status->speed_sec_all);
  }

  FUNC5 (hashcat_ctx, hashcat_status);

  FUNC2 (hashcat_status);
}