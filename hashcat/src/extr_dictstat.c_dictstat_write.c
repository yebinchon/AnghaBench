
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int dictstat_disable; } ;
typedef TYPE_1__ hashconfig_t ;
struct TYPE_7__ {TYPE_3__* dictstat_ctx; TYPE_1__* hashconfig; } ;
typedef TYPE_2__ hashcat_ctx_t ;
typedef int dictstat_t ;
struct TYPE_8__ {int enabled; int cnt; int * base; int filename; } ;
typedef TYPE_3__ dictstat_ctx_t ;
typedef int HCFILE ;


 int DICTSTAT_VERSION ;
 int byte_swap_64 (int ) ;
 int errno ;
 int event_log_error (TYPE_2__*,char*,int ,int ) ;
 int hc_fclose (int *) ;
 int hc_fopen (int *,int ,char*) ;
 int hc_fwrite (int *,int,int,int *) ;
 int hc_lockfile (int *) ;
 int strerror (int ) ;

int dictstat_write (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  dictstat_ctx_t *dictstat_ctx = hashcat_ctx->dictstat_ctx;

  if (dictstat_ctx->enabled == 0) return 0;

  if (hashconfig->dictstat_disable == 1) return 0;

  HCFILE fp;

  if (hc_fopen (&fp, dictstat_ctx->filename, "wb") == 0)
  {
    event_log_error (hashcat_ctx, "%s: %s", dictstat_ctx->filename, strerror (errno));

    return -1;
  }

  if (hc_lockfile (&fp) == -1)
  {
    hc_fclose (&fp);

    event_log_error (hashcat_ctx, "%s: %s", dictstat_ctx->filename, strerror (errno));

    return -1;
  }



  u64 v = DICTSTAT_VERSION;
  u64 z = 0;

  v = byte_swap_64 (v);
  z = byte_swap_64 (z);

  hc_fwrite (&v, sizeof (u64), 1, &fp);
  hc_fwrite (&z, sizeof (u64), 1, &fp);



  hc_fwrite (dictstat_ctx->base, sizeof (dictstat_t), dictstat_ctx->cnt, &fp);

  hc_fclose (&fp);

  return 0;
}
