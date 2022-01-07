
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int example_hashes; int keyspace; int left; int backend_info; int show; int usage; int version; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_6__ {TYPE_1__* user_options; TYPE_3__* cpt_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
typedef int cpt_t ;
struct TYPE_7__ {int enabled; int cpt_start; scalar_t__ cpt_pos; scalar_t__ cpt_total; int * cpt_buf; } ;
typedef TYPE_3__ cpt_ctx_t ;


 int CPT_CACHE ;
 scalar_t__ hccalloc (int ,int) ;
 int time (int *) ;

int cpt_ctx_init (hashcat_ctx_t *hashcat_ctx)
{
  cpt_ctx_t *cpt_ctx = hashcat_ctx->cpt_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  cpt_ctx->enabled = 0;

  if (user_options->example_hashes == 1) return 0;
  if (user_options->keyspace == 1) return 0;
  if (user_options->left == 1) return 0;
  if (user_options->backend_info == 1) return 0;
  if (user_options->show == 1) return 0;
  if (user_options->usage == 1) return 0;
  if (user_options->version == 1) return 0;

  cpt_ctx->enabled = 1;

  cpt_ctx->cpt_buf = (cpt_t *) hccalloc (CPT_CACHE, sizeof (cpt_t));

  cpt_ctx->cpt_total = 0;
  cpt_ctx->cpt_pos = 0;
  cpt_ctx->cpt_start = time (((void*)0));

  return 0;
}
