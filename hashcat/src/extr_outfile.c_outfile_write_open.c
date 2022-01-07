
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * filename; int fp; } ;
typedef TYPE_1__ outfile_ctx_t ;
struct TYPE_6__ {TYPE_1__* outfile_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int errno ;
 int event_log_error (TYPE_2__*,char*,int *,int ) ;
 int hc_fclose (int *) ;
 int hc_fopen (int *,int *,char*) ;
 int hc_lockfile (int *) ;
 int strerror (int ) ;

int outfile_write_open (hashcat_ctx_t *hashcat_ctx)
{
  outfile_ctx_t *outfile_ctx = hashcat_ctx->outfile_ctx;

  if (outfile_ctx->filename == ((void*)0)) return 0;

  if (hc_fopen (&outfile_ctx->fp, outfile_ctx->filename, "ab") == 0)
  {
    event_log_error (hashcat_ctx, "%s: %s", outfile_ctx->filename, strerror (errno));

    return -1;
  }

  if (hc_lockfile (&outfile_ctx->fp) == -1)
  {
    hc_fclose (&outfile_ctx->fp);

    event_log_error (hashcat_ctx, "%s: %s", outfile_ctx->filename, strerror (errno));

    return -1;
  }

  return 0;
}
