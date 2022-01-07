
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int enabled; int filename; int fp; } ;
typedef TYPE_1__ potfile_ctx_t ;
struct TYPE_6__ {TYPE_1__* potfile_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int errno ;
 int event_log_error (TYPE_2__*,char*,int ,int ) ;
 int hc_fopen (int *,int ,char*) ;
 int strerror (int ) ;

int potfile_read_open (hashcat_ctx_t *hashcat_ctx)
{
  potfile_ctx_t *potfile_ctx = hashcat_ctx->potfile_ctx;

  if (potfile_ctx->enabled == 0) return 0;

  if (hc_fopen (&potfile_ctx->fp, potfile_ctx->filename, "rb") == 0)
  {
    event_log_error (hashcat_ctx, "%s: %s", potfile_ctx->filename, strerror (errno));

    return -1;
  }

  return 0;
}
