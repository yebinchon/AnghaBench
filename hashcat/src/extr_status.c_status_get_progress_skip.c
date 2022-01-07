
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int slow_candidates; scalar_t__ skip; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_11__ {scalar_t__ attack_kern; } ;
typedef TYPE_2__ user_options_extra_t ;
typedef int u64 ;
struct TYPE_12__ {int kernel_rules_cnt; } ;
typedef TYPE_3__ straight_ctx_t ;
struct TYPE_13__ {int words_base; } ;
typedef TYPE_4__ status_ctx_t ;
struct TYPE_14__ {int bfs_cnt; } ;
typedef TYPE_5__ mask_ctx_t ;
struct TYPE_15__ {int salts_cnt; } ;
typedef TYPE_6__ hashes_t ;
struct TYPE_16__ {TYPE_3__* straight_ctx; TYPE_5__* mask_ctx; TYPE_8__* combinator_ctx; TYPE_2__* user_options_extra; TYPE_1__* user_options; TYPE_4__* status_ctx; TYPE_6__* hashes; } ;
typedef TYPE_7__ hashcat_ctx_t ;
struct TYPE_17__ {int combs_cnt; } ;
typedef TYPE_8__ combinator_ctx_t ;


 scalar_t__ ATTACK_KERN_BF ;
 scalar_t__ ATTACK_KERN_COMBI ;
 scalar_t__ ATTACK_KERN_STRAIGHT ;
 int MIN (scalar_t__,int ) ;

u64 status_get_progress_skip (const hashcat_ctx_t *hashcat_ctx)
{
  const hashes_t *hashes = hashcat_ctx->hashes;
  const status_ctx_t *status_ctx = hashcat_ctx->status_ctx;
  const user_options_t *user_options = hashcat_ctx->user_options;
  const user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;

  u64 progress_skip = 0;

  if (user_options->skip)
  {
    const combinator_ctx_t *combinator_ctx = hashcat_ctx->combinator_ctx;
    const mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;
    const straight_ctx_t *straight_ctx = hashcat_ctx->straight_ctx;

    progress_skip = MIN (user_options->skip, status_ctx->words_base) * hashes->salts_cnt;

    if (user_options->slow_candidates == 1)
    {

    }
    else
    {
      if (user_options_extra->attack_kern == ATTACK_KERN_STRAIGHT) progress_skip *= straight_ctx->kernel_rules_cnt;
      else if (user_options_extra->attack_kern == ATTACK_KERN_COMBI) progress_skip *= combinator_ctx->combs_cnt;
      else if (user_options_extra->attack_kern == ATTACK_KERN_BF) progress_skip *= mask_ctx->bfs_cnt;
    }
  }

  return progress_skip;
}
