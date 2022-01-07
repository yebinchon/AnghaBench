
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* cpt_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {int enabled; int cpt_buf; } ;
typedef TYPE_2__ cpt_ctx_t ;


 int hcfree (int ) ;
 int memset (TYPE_2__*,int ,int) ;

void cpt_ctx_destroy (hashcat_ctx_t *hashcat_ctx)
{
  cpt_ctx_t *cpt_ctx = hashcat_ctx->cpt_ctx;

  if (cpt_ctx->enabled == 0) return;

  hcfree (cpt_ctx->cpt_buf);

  memset (cpt_ctx, 0, sizeof (cpt_ctx_t));
}
