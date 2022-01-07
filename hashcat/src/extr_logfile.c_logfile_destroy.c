
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int enabled; int subid; int topid; int logfile; } ;
typedef TYPE_1__ logfile_ctx_t ;
struct TYPE_6__ {TYPE_1__* logfile_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int hcfree (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void logfile_destroy (hashcat_ctx_t *hashcat_ctx)
{
  logfile_ctx_t *logfile_ctx = hashcat_ctx->logfile_ctx;

  if (logfile_ctx->enabled == 0) return;

  hcfree (logfile_ctx->logfile);
  hcfree (logfile_ctx->topid);
  hcfree (logfile_ctx->subid);

  memset (logfile_ctx, 0, sizeof (logfile_ctx_t));
}
