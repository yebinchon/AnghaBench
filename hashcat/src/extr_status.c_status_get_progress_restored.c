
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct TYPE_5__ {scalar_t__* words_progress_restored; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_6__ {size_t salts_cnt; } ;
typedef TYPE_2__ hashes_t ;
struct TYPE_7__ {TYPE_1__* status_ctx; TYPE_2__* hashes; } ;
typedef TYPE_3__ hashcat_ctx_t ;



u64 status_get_progress_restored (const hashcat_ctx_t *hashcat_ctx)
{
  const hashes_t *hashes = hashcat_ctx->hashes;
  const status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  u64 progress_restored = 0;

  for (u32 salt_pos = 0; salt_pos < hashes->salts_cnt; salt_pos++)
  {
    progress_restored += status_ctx->words_progress_restored[salt_pos];
  }

  return progress_restored;
}
