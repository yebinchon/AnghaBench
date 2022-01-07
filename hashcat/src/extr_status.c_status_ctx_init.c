
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int run_main_level1; int run_main_level2; int run_main_level3; int run_thread_level1; int run_thread_level2; int shutdown_inner; int shutdown_outer; int checkpoint_shutdown; int mux_hwmon; int mux_display; int mux_counter; int mux_dispatcher; int * hashcat_status_final; int devices_status; } ;
typedef TYPE_1__ status_ctx_t ;
typedef int hashcat_status_t ;
struct TYPE_5__ {TYPE_1__* status_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int STATUS_INIT ;
 int hc_thread_mutex_init (int ) ;
 scalar_t__ hcmalloc (int) ;

int status_ctx_init (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  status_ctx->devices_status = STATUS_INIT;

  status_ctx->run_main_level1 = 1;
  status_ctx->run_main_level2 = 1;
  status_ctx->run_main_level3 = 1;
  status_ctx->run_thread_level1 = 1;
  status_ctx->run_thread_level2 = 1;

  status_ctx->shutdown_inner = 0;
  status_ctx->shutdown_outer = 0;

  status_ctx->checkpoint_shutdown = 0;

  status_ctx->hashcat_status_final = (hashcat_status_t *) hcmalloc (sizeof (hashcat_status_t));

  hc_thread_mutex_init (status_ctx->mux_dispatcher);
  hc_thread_mutex_init (status_ctx->mux_counter);
  hc_thread_mutex_init (status_ctx->mux_display);
  hc_thread_mutex_init (status_ctx->mux_hwmon);

  return 0;
}
