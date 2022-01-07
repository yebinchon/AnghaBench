
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int enabled; int rd; int new_restore_file; int eff_restore_file; } ;
typedef TYPE_1__ restore_ctx_t ;
struct TYPE_6__ {TYPE_1__* restore_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int hcfree (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void restore_ctx_destroy (hashcat_ctx_t *hashcat_ctx)
{
  restore_ctx_t *restore_ctx = hashcat_ctx->restore_ctx;

  if (restore_ctx->enabled == 0) return;

  hcfree (restore_ctx->eff_restore_file);
  hcfree (restore_ctx->new_restore_file);
  hcfree (restore_ctx->rd);

  memset (restore_ctx, 0, sizeof (restore_ctx_t));
}
