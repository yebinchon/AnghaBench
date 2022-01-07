
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int machine_readable; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_14__ {int device_info_cnt; int device_info_active; int speed_sec_all; TYPE_4__* device_info_buf; } ;
typedef TYPE_2__ hashcat_status_t ;
struct TYPE_15__ {TYPE_1__* user_options; } ;
typedef TYPE_3__ hashcat_ctx_t ;
struct TYPE_16__ {int skipped_dev; int skipped_warning_dev; int vector_width_dev; int kernel_threads_dev; int kernel_loops_dev; int kernel_accel_dev; int exec_msec_dev; int speed_sec_dev; } ;
typedef TYPE_4__ device_info_t ;


 int event_log_info (TYPE_3__*,char*,int,...) ;
 int hashcat_get_status (TYPE_3__*,TYPE_2__*) ;
 int hcfree (TYPE_2__*) ;
 scalar_t__ hcmalloc (int) ;
 int status_benchmark_machine_readable (TYPE_3__*) ;
 int status_status_destroy (TYPE_3__*,TYPE_2__*) ;

void status_benchmark (hashcat_ctx_t *hashcat_ctx)
{
  const user_options_t *user_options = hashcat_ctx->user_options;

  if (user_options->machine_readable == 1)
  {
    status_benchmark_machine_readable (hashcat_ctx);

    return;
  }

  hashcat_status_t *hashcat_status = (hashcat_status_t *) hcmalloc (sizeof (hashcat_status_t));

  if (hashcat_get_status (hashcat_ctx, hashcat_status) == -1)
  {
    hcfree (hashcat_status);

    return;
  }

  for (int device_id = 0; device_id < hashcat_status->device_info_cnt; device_id++)
  {
    const device_info_t *device_info = hashcat_status->device_info_buf + device_id;

    if (device_info->skipped_dev == 1) continue;

    if (device_info->skipped_warning_dev == 1) continue;

    event_log_info (hashcat_ctx,
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
    event_log_info (hashcat_ctx,
      "Speed.#*.........: %9sH/s",
      hashcat_status->speed_sec_all);
  }

  status_status_destroy (hashcat_ctx, hashcat_status);

  hcfree (hashcat_status);
}
