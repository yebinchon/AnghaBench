
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int dictstat_disable; } ;
typedef TYPE_1__ hashconfig_t ;
struct TYPE_8__ {TYPE_3__* dictstat_ctx; TYPE_1__* hashconfig; } ;
typedef TYPE_2__ hashcat_ctx_t ;
typedef int dictstat_t ;
struct TYPE_9__ {int enabled; int filename; int cnt; int base; } ;
typedef TYPE_3__ dictstat_ctx_t ;
typedef int HCFILE ;


 int DICTSTAT_VERSION ;
 int MAX_DICTSTAT ;
 int byte_swap_64 (int) ;
 int event_log_error (TYPE_2__*,char*,int ) ;
 int event_log_warning (TYPE_2__*,char*,int ) ;
 int hc_fclose (int *) ;
 int hc_feof (int *) ;
 int hc_fopen (int *,int ,char*) ;
 size_t hc_fread (int*,int,int,int *) ;
 int lsearch (int*,int ,int *,int,int ) ;
 int sort_by_dictstat ;

void dictstat_read (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  dictstat_ctx_t *dictstat_ctx = hashcat_ctx->dictstat_ctx;

  if (dictstat_ctx->enabled == 0) return;

  if (hashconfig->dictstat_disable == 1) return;

  HCFILE fp;

  if (hc_fopen (&fp, dictstat_ctx->filename, "rb") == 0)
  {


    return;
  }



  u64 v;
  u64 z;

  const size_t nread1 = hc_fread (&v, sizeof (u64), 1, &fp);
  const size_t nread2 = hc_fread (&z, sizeof (u64), 1, &fp);

  if ((nread1 != 1) || (nread2 != 1))
  {
    event_log_error (hashcat_ctx, "%s: Invalid header", dictstat_ctx->filename);

    hc_fclose (&fp);

    return;
  }

  v = byte_swap_64 (v);
  z = byte_swap_64 (z);

  if ((v & 0xffffffffffffff00) != (DICTSTAT_VERSION & 0xffffffffffffff00))
  {
    event_log_error (hashcat_ctx, "%s: Invalid header, ignoring content", dictstat_ctx->filename);

    hc_fclose (&fp);

    return;
  }

  if (z != 0)
  {
    event_log_error (hashcat_ctx, "%s: Invalid header, ignoring content", dictstat_ctx->filename);

    hc_fclose (&fp);

    return;
  }

  if ((v & 0xff) < (DICTSTAT_VERSION & 0xff))
  {
    event_log_warning (hashcat_ctx, "%s: Outdated header version, ignoring content", dictstat_ctx->filename);

    hc_fclose (&fp);

    return;
  }



  while (!hc_feof (&fp))
  {
    dictstat_t d;

    const size_t nread = hc_fread (&d, sizeof (dictstat_t), 1, &fp);

    if (nread == 0) continue;

    lsearch (&d, dictstat_ctx->base, &dictstat_ctx->cnt, sizeof (dictstat_t), sort_by_dictstat);

    if (dictstat_ctx->cnt == MAX_DICTSTAT)
    {
      event_log_error (hashcat_ctx, "There are too many entries in the %s database. You have to remove/rename it.", dictstat_ctx->filename);

      break;
    }
  }

  hc_fclose (&fp);
}
