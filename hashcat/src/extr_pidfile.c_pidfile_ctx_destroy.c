
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pidfile_written; int pd; int filename; } ;
typedef TYPE_1__ pidfile_ctx_t ;
struct TYPE_6__ {TYPE_1__* pidfile_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int hcfree (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int unlink (int ) ;

void pidfile_ctx_destroy (hashcat_ctx_t *hashcat_ctx)
{
  pidfile_ctx_t *pidfile_ctx = hashcat_ctx->pidfile_ctx;

  if (pidfile_ctx->pidfile_written == 1)
  {
    unlink (pidfile_ctx->filename);
  }

  hcfree (pidfile_ctx->filename);

  hcfree (pidfile_ctx->pd);

  memset (pidfile_ctx, 0, sizeof (pidfile_ctx_t));
}
