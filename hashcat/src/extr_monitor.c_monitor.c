
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int remove; int status; int restore_timer; int remove_timer; int status_timer; scalar_t__ stdin_timeout_abort; scalar_t__ hwmon_temp_abort; scalar_t__ runtime; } ;
typedef TYPE_1__ user_options_t ;
typedef int u32 ;
struct TYPE_21__ {int shutdown_inner; scalar_t__ devices_status; scalar_t__ runtime_start; scalar_t__ stdin_read_timeout_cnt; int mux_hwmon; int mux_display; } ;
typedef TYPE_2__ status_ctx_t ;
struct TYPE_22__ {int enabled; } ;
typedef TYPE_3__ restore_ctx_t ;
struct TYPE_23__ {int enabled; } ;
typedef TYPE_4__ hwmon_ctx_t ;
struct TYPE_24__ {int skipped; int opencl_device_type; int skipped_warning; } ;
typedef TYPE_5__ hc_device_param_t ;
struct TYPE_25__ {scalar_t__ hashlist_mode; scalar_t__ digests_saved; scalar_t__ digests_done; } ;
typedef TYPE_6__ hashes_t ;
struct TYPE_26__ {TYPE_1__* user_options; TYPE_2__* status_ctx; TYPE_3__* restore_ctx; TYPE_8__* backend_ctx; TYPE_4__* hwmon_ctx; TYPE_6__* hashes; } ;
typedef TYPE_7__ hashcat_ctx_t ;
struct TYPE_27__ {int backend_devices_cnt; TYPE_5__* devices_param; } ;
typedef TYPE_8__ backend_ctx_t ;


 int CL_DEVICE_TYPE_GPU ;
 int EVENT_DATA (int ,int*,int) ;
 int EVENT_MONITOR_NOINPUT_ABORT ;
 int EVENT_MONITOR_NOINPUT_HINT ;
 int EVENT_MONITOR_PERFORMANCE_HINT ;
 int EVENT_MONITOR_RUNTIME_LIMIT ;
 int EVENT_MONITOR_STATUS_REFRESH ;
 int EVENT_MONITOR_TEMP_ABORT ;
 int EVENT_MONITOR_THROTTLE1 ;
 int EVENT_MONITOR_THROTTLE2 ;
 int EVENT_MONITOR_THROTTLE3 ;
 scalar_t__ HL_MODE_FILE_BINARY ;
 scalar_t__ HL_MODE_FILE_PLAIN ;
 scalar_t__ STATUS_INIT ;
 int STDIN_TIMEOUT_WARN ;
 int cycle_restore (TYPE_7__*) ;
 int get_runtime_left (TYPE_7__*) ;
 int hc_thread_mutex_lock (int ) ;
 int hc_thread_mutex_unlock (int ) ;
 int hm_get_temperature_with_devices_idx (TYPE_7__*,int) ;
 int hm_get_throttle_with_devices_idx (TYPE_7__*,int) ;
 int hm_get_utilization_with_devices_idx (TYPE_7__*,int) ;
 int myabort (TYPE_7__*) ;
 int myabort_runtime (TYPE_7__*) ;
 int save_hash (TYPE_7__*) ;
 int sleep (int const) ;
 double status_get_exec_msec_dev (TYPE_7__*,int) ;
 scalar_t__ status_get_progress_done (TYPE_7__*) ;

__attribute__((used)) static int monitor (hashcat_ctx_t *hashcat_ctx)
{
  hashes_t *hashes = hashcat_ctx->hashes;
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;
  restore_ctx_t *restore_ctx = hashcat_ctx->restore_ctx;
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  bool runtime_check = 0;
  bool remove_check = 0;
  bool status_check = 0;
  bool restore_check = 0;
  bool hwmon_check = 0;
  bool performance_check = 0;

  const int sleep_time = 1;
  const double exec_low = 50.0;
  const double util_low = 90.0;

  if (user_options->runtime)
  {
    runtime_check = 1;
  }

  if (restore_ctx->enabled == 1)
  {
    restore_check = 1;
  }

  if ((user_options->remove == 1) && ((hashes->hashlist_mode == HL_MODE_FILE_PLAIN) || (hashes->hashlist_mode == HL_MODE_FILE_BINARY)))
  {
    remove_check = 1;
  }

  if (user_options->status == 1)
  {
    status_check = 1;
  }

  if (hwmon_ctx->enabled == 1)
  {
    hwmon_check = 1;
  }

  if (hwmon_ctx->enabled == 1)
  {
    performance_check = 1;
  }

  if ((runtime_check == 0) && (remove_check == 0) && (status_check == 0) && (restore_check == 0) && (hwmon_check == 0) && (performance_check == 0))
  {
    return 0;
  }



  u32 slowdown_warnings = 0;
  u32 performance_warnings = 0;

  u32 restore_left = user_options->restore_timer;
  u32 remove_left = user_options->remove_timer;
  u32 status_left = user_options->status_timer;

  while (status_ctx->shutdown_inner == 0)
  {
    sleep (sleep_time);

    if (status_ctx->devices_status == STATUS_INIT) continue;

    if (hwmon_ctx->enabled == 1)
    {
      hc_thread_mutex_lock (status_ctx->mux_hwmon);

      for (int backend_devices_idx = 0; backend_devices_idx < backend_ctx->backend_devices_cnt; backend_devices_idx++)
      {
        hc_device_param_t *device_param = &backend_ctx->devices_param[backend_devices_idx];

        if (device_param->skipped == 1) continue;

        if ((backend_ctx->devices_param[backend_devices_idx].opencl_device_type & CL_DEVICE_TYPE_GPU) == 0) continue;

        const int temperature = hm_get_temperature_with_devices_idx (hashcat_ctx, backend_devices_idx);

        if (temperature > (int) user_options->hwmon_temp_abort)
        {
          EVENT_DATA (EVENT_MONITOR_TEMP_ABORT, &backend_devices_idx, sizeof (int));

          myabort (hashcat_ctx);
        }
      }

      for (int backend_devices_idx = 0; backend_devices_idx < backend_ctx->backend_devices_cnt; backend_devices_idx++)
      {
        hc_device_param_t *device_param = &backend_ctx->devices_param[backend_devices_idx];

        if (device_param->skipped == 1) continue;

        if (device_param->skipped_warning == 1) continue;

        const int rc_throttle = hm_get_throttle_with_devices_idx (hashcat_ctx, backend_devices_idx);

        if (rc_throttle == -1) continue;

        if (rc_throttle > 0)
        {
          slowdown_warnings++;

          if (slowdown_warnings == 1) EVENT_DATA (EVENT_MONITOR_THROTTLE1, &backend_devices_idx, sizeof (int));
          if (slowdown_warnings == 2) EVENT_DATA (EVENT_MONITOR_THROTTLE2, &backend_devices_idx, sizeof (int));
          if (slowdown_warnings == 3) EVENT_DATA (EVENT_MONITOR_THROTTLE3, &backend_devices_idx, sizeof (int));
        }
        else
        {
          if (slowdown_warnings > 0) slowdown_warnings--;
        }
      }

      hc_thread_mutex_unlock (status_ctx->mux_hwmon);
    }

    if (restore_check == 1)
    {
      restore_left--;

      if (restore_left == 0)
      {
        const int rc = cycle_restore (hashcat_ctx);

        if (rc == -1) return -1;

        restore_left = user_options->restore_timer;
      }
    }

    if ((runtime_check == 1) && (status_ctx->runtime_start > 0))
    {
      const int runtime_left = get_runtime_left (hashcat_ctx);

      if (runtime_left <= 0)
      {
        EVENT_DATA (EVENT_MONITOR_RUNTIME_LIMIT, ((void*)0), 0);

        myabort_runtime (hashcat_ctx);
      }
    }

    if (remove_check == 1)
    {
      remove_left--;

      if (remove_left == 0)
      {
        if (hashes->digests_saved != hashes->digests_done)
        {
          hashes->digests_saved = hashes->digests_done;

          const int rc = save_hash (hashcat_ctx);

          if (rc == -1) return -1;
        }

        remove_left = user_options->remove_timer;
      }
    }

    if (status_check == 1)
    {
      status_left--;

      if (status_left == 0)
      {
        hc_thread_mutex_lock (status_ctx->mux_display);

        EVENT_DATA (EVENT_MONITOR_STATUS_REFRESH, ((void*)0), 0);

        hc_thread_mutex_unlock (status_ctx->mux_display);

        status_left = user_options->status_timer;
      }
    }

    if (performance_check == 1)
    {
      int exec_cnt = 0;
      int util_cnt = 0;

      double exec_total = 0;
      double util_total = 0;

      hc_thread_mutex_lock (status_ctx->mux_hwmon);

      for (int backend_devices_idx = 0; backend_devices_idx < backend_ctx->backend_devices_cnt; backend_devices_idx++)
      {
        hc_device_param_t *device_param = &backend_ctx->devices_param[backend_devices_idx];

        if (device_param->skipped == 1) continue;

        if (device_param->skipped_warning == 1) continue;

        exec_cnt++;

        const double exec = status_get_exec_msec_dev (hashcat_ctx, backend_devices_idx);

        exec_total += exec;

        const int util = hm_get_utilization_with_devices_idx (hashcat_ctx, backend_devices_idx);

        if (util == -1) continue;

        util_total += (double) util;

        util_cnt++;
      }

      hc_thread_mutex_unlock (status_ctx->mux_hwmon);

      double exec_avg = 0;
      double util_avg = 0;

      if (exec_cnt > 0) exec_avg = exec_total / exec_cnt;
      if (util_cnt > 0) util_avg = util_total / util_cnt;

      if ((exec_avg > 0) && (exec_avg < exec_low))
      {
        performance_warnings++;

        if (performance_warnings == 10) EVENT_DATA (EVENT_MONITOR_PERFORMANCE_HINT, ((void*)0), 0);
      }

      if ((util_avg > 0) && (util_avg < util_low))
      {
        performance_warnings++;

        if (performance_warnings == 10) EVENT_DATA (EVENT_MONITOR_PERFORMANCE_HINT, ((void*)0), 0);
      }
    }




    if (user_options->stdin_timeout_abort != 0)
    {
      if (status_get_progress_done (hashcat_ctx) == 0)
      {
        if (status_ctx->stdin_read_timeout_cnt > 0)
        {
          if (status_ctx->stdin_read_timeout_cnt >= user_options->stdin_timeout_abort)
          {
            EVENT_DATA (EVENT_MONITOR_NOINPUT_ABORT, ((void*)0), 0);

            myabort (hashcat_ctx);

            status_ctx->shutdown_inner = 1;

            break;
          }

          if ((status_ctx->stdin_read_timeout_cnt % STDIN_TIMEOUT_WARN) == 0)
          {
            EVENT_DATA (EVENT_MONITOR_NOINPUT_HINT, ((void*)0), 0);
          }
        }
      }
    }
  }



  if (remove_check == 1)
  {
    if (hashes->digests_saved != hashes->digests_done)
    {
      const int rc = save_hash (hashcat_ctx);

      if (rc == -1) return -1;
    }
  }



  if (restore_check == 1)
  {
    const int rc = cycle_restore (hashcat_ctx);

    if (rc == -1) return -1;
  }

  return 0;
}
