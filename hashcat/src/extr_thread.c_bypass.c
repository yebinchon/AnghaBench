
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ devices_status; int run_main_level1; int run_main_level2; int run_main_level3; int run_thread_level1; int run_thread_level2; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_5__ {TYPE_1__* status_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 scalar_t__ STATUS_BYPASS ;
 scalar_t__ STATUS_RUNNING ;

int bypass (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  if (status_ctx->devices_status != STATUS_RUNNING) return -1;

  status_ctx->devices_status = STATUS_BYPASS;

  status_ctx->run_main_level1 = 1;
  status_ctx->run_main_level2 = 1;
  status_ctx->run_main_level3 = 1;
  status_ctx->run_thread_level1 = 0;
  status_ctx->run_thread_level2 = 0;

  return 0;
}
