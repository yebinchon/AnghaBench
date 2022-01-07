
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dictstat_disable; } ;
typedef TYPE_1__ hashconfig_t ;
struct TYPE_7__ {TYPE_3__* dictstat_ctx; TYPE_1__* hashconfig; } ;
typedef TYPE_2__ hashcat_ctx_t ;
typedef int dictstat_t ;
struct TYPE_8__ {int enabled; scalar_t__ cnt; int base; int filename; } ;
typedef TYPE_3__ dictstat_ctx_t ;


 scalar_t__ MAX_DICTSTAT ;
 int event_log_error (TYPE_2__*,char*,int ) ;
 int lsearch (int *,int ,scalar_t__*,int,int ) ;
 int sort_by_dictstat ;

void dictstat_append (hashcat_ctx_t *hashcat_ctx, dictstat_t *d)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  dictstat_ctx_t *dictstat_ctx = hashcat_ctx->dictstat_ctx;

  if (dictstat_ctx->enabled == 0) return;

  if (hashconfig->dictstat_disable == 1) return;

  if (dictstat_ctx->cnt == MAX_DICTSTAT)
  {
    event_log_error (hashcat_ctx, "There are too many entries in the %s database. You have to remove/rename it.", dictstat_ctx->filename);

    return;
  }

  lsearch (d, dictstat_ctx->base, &dictstat_ctx->cnt, sizeof (dictstat_t), sort_by_dictstat);
}
