
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int enabled; int tmp_buf; int out_buf; } ;
typedef TYPE_1__ potfile_ctx_t ;
struct TYPE_7__ {int potfile_disable; } ;
typedef TYPE_2__ hashconfig_t ;
struct TYPE_8__ {TYPE_1__* potfile_ctx; TYPE_2__* hashconfig; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 int hcfree (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void potfile_destroy (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  potfile_ctx_t *potfile_ctx = hashcat_ctx->potfile_ctx;

  if (potfile_ctx->enabled == 0) return;

  if (hashconfig->potfile_disable == 1) return;

  hcfree (potfile_ctx->out_buf);
  hcfree (potfile_ctx->tmp_buf);

  memset (potfile_ctx, 0, sizeof (potfile_ctx_t));
}
