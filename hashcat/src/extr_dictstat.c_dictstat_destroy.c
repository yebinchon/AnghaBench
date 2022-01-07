
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
struct TYPE_8__ {int enabled; int base; int filename; } ;
typedef TYPE_3__ dictstat_ctx_t ;


 int hcfree (int ) ;
 int memset (TYPE_3__*,int ,int) ;

void dictstat_destroy (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  dictstat_ctx_t *dictstat_ctx = hashcat_ctx->dictstat_ctx;

  if (dictstat_ctx->enabled == 0) return;

  if (hashconfig->dictstat_disable == 1) return;

  hcfree (dictstat_ctx->filename);
  hcfree (dictstat_ctx->base);

  memset (dictstat_ctx, 0, sizeof (dictstat_ctx_t));
}
