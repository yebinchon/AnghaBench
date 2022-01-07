
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hashcat_status_final; int mux_hwmon; int mux_display; int mux_counter; int mux_dispatcher; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_6__ {TYPE_1__* status_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int hc_thread_mutex_delete (int ) ;
 int hcfree (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void status_ctx_destroy (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  hc_thread_mutex_delete (status_ctx->mux_dispatcher);
  hc_thread_mutex_delete (status_ctx->mux_counter);
  hc_thread_mutex_delete (status_ctx->mux_display);
  hc_thread_mutex_delete (status_ctx->mux_hwmon);

  hcfree (status_ctx->hashcat_status_final);

  memset (status_ctx, 0, sizeof (status_ctx_t));
}
