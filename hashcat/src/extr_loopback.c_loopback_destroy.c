
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int enabled; } ;
typedef TYPE_1__ loopback_ctx_t ;
struct TYPE_6__ {TYPE_1__* loopback_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int memset (TYPE_1__*,int ,int) ;

void loopback_destroy (hashcat_ctx_t *hashcat_ctx)
{
  loopback_ctx_t *loopback_ctx = hashcat_ctx->loopback_ctx;

  if (loopback_ctx->enabled == 0) return;

  memset (loopback_ctx, 0, sizeof (loopback_ctx_t));
}
