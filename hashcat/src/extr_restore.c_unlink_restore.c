
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ devices_status; int run_thread_level1; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_6__ {int enabled; int new_restore_file; int eff_restore_file; } ;
typedef TYPE_2__ restore_ctx_t ;
struct TYPE_7__ {TYPE_1__* status_ctx; TYPE_2__* restore_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 scalar_t__ STATUS_CRACKED ;
 scalar_t__ STATUS_EXHAUSTED ;
 int unlink (int ) ;

void unlink_restore (hashcat_ctx_t *hashcat_ctx)
{
  restore_ctx_t *restore_ctx = hashcat_ctx->restore_ctx;
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  if (restore_ctx->enabled == 0) return;

  if ((status_ctx->devices_status == STATUS_EXHAUSTED) && (status_ctx->run_thread_level1 == 1))
  {
    unlink (restore_ctx->eff_restore_file);
    unlink (restore_ctx->new_restore_file);
  }

  if (status_ctx->devices_status == STATUS_CRACKED)
  {
    unlink (restore_ctx->eff_restore_file);
    unlink (restore_ctx->new_restore_file);
  }
}
