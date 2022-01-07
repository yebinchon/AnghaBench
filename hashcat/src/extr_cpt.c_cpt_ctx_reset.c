
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* cpt_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
typedef int cpt_t ;
struct TYPE_5__ {int enabled; int cpt_start; scalar_t__ cpt_pos; scalar_t__ cpt_total; int cpt_buf; } ;
typedef TYPE_2__ cpt_ctx_t ;


 int CPT_CACHE ;
 int memset (int ,int ,int) ;
 int time (int *) ;

void cpt_ctx_reset (hashcat_ctx_t *hashcat_ctx)
{
  cpt_ctx_t *cpt_ctx = hashcat_ctx->cpt_ctx;

  if (cpt_ctx->enabled == 0) return;

  memset (cpt_ctx->cpt_buf, 0, CPT_CACHE * sizeof (cpt_t));

  cpt_ctx->cpt_total = 0;
  cpt_ctx->cpt_pos = 0;
  cpt_ctx->cpt_start = time (((void*)0));
}
