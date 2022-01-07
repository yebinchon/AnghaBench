
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pidfile_data_t ;
struct TYPE_5__ {char* filename; int * pd; } ;
typedef TYPE_1__ pidfile_ctx_t ;
struct TYPE_6__ {TYPE_1__* pidfile_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
typedef int HCFILE ;


 int errno ;
 int event_log_error (TYPE_2__*,char*,char*,int ) ;
 int hc_fclose (int *) ;
 int hc_fflush (int *) ;
 int hc_fopen (int *,char*,char*) ;
 int hc_fwrite (int *,int,int,int *) ;
 int strerror (int ) ;

__attribute__((used)) static int write_pidfile (hashcat_ctx_t *hashcat_ctx)
{
  const pidfile_ctx_t *pidfile_ctx = hashcat_ctx->pidfile_ctx;

  pidfile_data_t *pd = pidfile_ctx->pd;

  char *pidfile_filename = pidfile_ctx->filename;

  HCFILE fp;

  if (hc_fopen (&fp, pidfile_filename, "wb") == 0)
  {
    event_log_error (hashcat_ctx, "%s: %s", pidfile_filename, strerror (errno));

    return -1;
  }

  hc_fwrite (pd, sizeof (pidfile_data_t), 1, &fp);

  hc_fflush (&fp);

  hc_fclose (&fp);

  return 0;
}
