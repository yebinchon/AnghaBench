
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int enabled; char* eff_restore_file; char* new_restore_file; } ;
typedef TYPE_1__ restore_ctx_t ;
struct TYPE_7__ {TYPE_1__* restore_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int errno ;
 int event_log_warning (TYPE_2__*,char*,char const*,char const*,...) ;
 int hc_path_exist (char const*) ;
 int rename (char const*,char const*) ;
 int strerror (int ) ;
 int unlink (char const*) ;
 int write_restore (TYPE_2__*) ;

int cycle_restore (hashcat_ctx_t *hashcat_ctx)
{
  restore_ctx_t *restore_ctx = hashcat_ctx->restore_ctx;

  if (restore_ctx->enabled == 0) return 0;

  const char *eff_restore_file = restore_ctx->eff_restore_file;
  const char *new_restore_file = restore_ctx->new_restore_file;

  if (write_restore (hashcat_ctx) == -1) return -1;

  if (hc_path_exist (eff_restore_file) == 1)
  {
    if (unlink (eff_restore_file) == -1)
    {
      event_log_warning (hashcat_ctx, "Unlink file '%s': %s", eff_restore_file, strerror (errno));
    }
  }

  if (rename (new_restore_file, eff_restore_file) == -1)
  {
    event_log_warning (hashcat_ctx, "Rename file '%s' to '%s': %s", new_restore_file, eff_restore_file, strerror (errno));
  }

  return 0;
}
