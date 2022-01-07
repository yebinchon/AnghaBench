
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ devices_status; int checkpoint_shutdown; int run_main_level1; int run_main_level2; int run_main_level3; int run_thread_level1; int run_thread_level2; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_7__ {int enabled; } ;
typedef TYPE_2__ restore_ctx_t ;
struct TYPE_8__ {TYPE_2__* restore_ctx; TYPE_1__* status_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 scalar_t__ STATUS_RUNNING ;
 int event_log_warning (TYPE_3__*,char*) ;

int stop_at_checkpoint (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  if (status_ctx->devices_status != STATUS_RUNNING) return -1;



  restore_ctx_t *restore_ctx = hashcat_ctx->restore_ctx;

  if (restore_ctx->enabled == 0)
  {
    event_log_warning (hashcat_ctx, "This feature is disabled when --restore-disable is specified.");

    return -1;
  }



  if (status_ctx->checkpoint_shutdown == 0)
  {
    status_ctx->checkpoint_shutdown = 1;

    status_ctx->run_main_level1 = 0;
    status_ctx->run_main_level2 = 0;
    status_ctx->run_main_level3 = 0;
    status_ctx->run_thread_level1 = 0;
    status_ctx->run_thread_level2 = 1;
  }
  else
  {
    status_ctx->checkpoint_shutdown = 0;

    status_ctx->run_main_level1 = 1;
    status_ctx->run_main_level2 = 1;
    status_ctx->run_main_level3 = 1;
    status_ctx->run_thread_level1 = 1;
    status_ctx->run_thread_level2 = 1;
  }

  return 0;
}
