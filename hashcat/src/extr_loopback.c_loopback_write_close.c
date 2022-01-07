
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * pfp; } ;
struct TYPE_6__ {int enabled; int unused; TYPE_5__ fp; } ;
typedef TYPE_1__ loopback_ctx_t ;
struct TYPE_7__ {TYPE_1__* loopback_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int hc_fclose (TYPE_5__*) ;
 int loopback_write_unlink (TYPE_2__*) ;

void loopback_write_close (hashcat_ctx_t *hashcat_ctx)
{
  loopback_ctx_t *loopback_ctx = hashcat_ctx->loopback_ctx;

  if (loopback_ctx->enabled == 0) return;

  if (loopback_ctx->fp.pfp == ((void*)0)) return;

  hc_fclose (&loopback_ctx->fp);

  if (loopback_ctx->unused == 1)
  {
    loopback_write_unlink (hashcat_ctx);
  }
}
