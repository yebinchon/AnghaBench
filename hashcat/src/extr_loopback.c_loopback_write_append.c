
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int enabled; int unused; int filename; int fp; } ;
typedef TYPE_1__ loopback_ctx_t ;
struct TYPE_7__ {TYPE_1__* loopback_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int EOL ;
 int event_log_error (TYPE_2__*,char*,int ) ;
 int hc_fflush (int *) ;
 int hc_fwrite (int ,int ,int,int *) ;
 int hc_lockfile (int *) ;
 scalar_t__ hc_unlockfile (int *) ;
 int loopback_format_plain (TYPE_2__*,int const*,unsigned int const) ;
 int strlen (int ) ;

void loopback_write_append (hashcat_ctx_t *hashcat_ctx, const u8 *plain_ptr, const unsigned int plain_len)
{
  loopback_ctx_t *loopback_ctx = hashcat_ctx->loopback_ctx;

  if (loopback_ctx->enabled == 0) return;

  loopback_format_plain (hashcat_ctx, plain_ptr, plain_len);

  hc_lockfile (&loopback_ctx->fp);

  hc_fwrite (EOL, strlen (EOL), 1, &loopback_ctx->fp);

  hc_fflush (&loopback_ctx->fp);

  if (hc_unlockfile (&loopback_ctx->fp))
  {
    event_log_error (hashcat_ctx, "%s: Failed to unlock file", loopback_ctx->filename);
  }

  loopback_ctx->unused = 0;
}
