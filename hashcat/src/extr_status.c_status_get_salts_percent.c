
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ salts_cnt; scalar_t__ salts_done; } ;
typedef TYPE_1__ hashes_t ;
struct TYPE_5__ {TYPE_1__* hashes; } ;
typedef TYPE_2__ hashcat_ctx_t ;



double status_get_salts_percent (const hashcat_ctx_t *hashcat_ctx)
{
  const hashes_t *hashes = hashcat_ctx->hashes;

  if (hashes->salts_cnt == 0) return 0;

  return ((double) hashes->salts_done / (double) hashes->salts_cnt) * 100;
}
