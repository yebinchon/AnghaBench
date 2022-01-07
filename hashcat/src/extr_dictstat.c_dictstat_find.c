
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {int dictstat_disable; } ;
typedef TYPE_1__ hashconfig_t ;
struct TYPE_9__ {TYPE_4__* dictstat_ctx; TYPE_1__* hashconfig; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_10__ {int cnt; } ;
typedef TYPE_3__ dictstat_t ;
struct TYPE_11__ {int enabled; int cnt; int base; } ;
typedef TYPE_4__ dictstat_ctx_t ;


 scalar_t__ lfind (TYPE_3__*,int ,int *,int,int ) ;
 int sort_by_dictstat ;

u64 dictstat_find (hashcat_ctx_t *hashcat_ctx, dictstat_t *d)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  dictstat_ctx_t *dictstat_ctx = hashcat_ctx->dictstat_ctx;

  if (dictstat_ctx->enabled == 0) return 0;

  if (hashconfig->dictstat_disable == 1) return 0;

  dictstat_t *d_cache = (dictstat_t *) lfind (d, dictstat_ctx->base, &dictstat_ctx->cnt, sizeof (dictstat_t), sort_by_dictstat);

  if (d_cache == ((void*)0)) return 0;

  return d_cache->cnt;
}
