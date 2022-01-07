
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int * words_progress_restored; int * words_progress_rejected; int * words_progress_done; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_6__ {int salts_cnt; } ;
typedef TYPE_2__ hashes_t ;
struct TYPE_7__ {TYPE_2__* hashes; TYPE_1__* status_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 scalar_t__ hccalloc (int ,int) ;

int status_progress_init (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;
  hashes_t *hashes = hashcat_ctx->hashes;

  status_ctx->words_progress_done = (u64 *) hccalloc (hashes->salts_cnt, sizeof (u64));
  status_ctx->words_progress_rejected = (u64 *) hccalloc (hashes->salts_cnt, sizeof (u64));
  status_ctx->words_progress_restored = (u64 *) hccalloc (hashes->salts_cnt, sizeof (u64));

  return 0;
}
