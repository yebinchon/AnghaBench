
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enabled; int * filename; } ;
typedef TYPE_1__ loopback_ctx_t ;
struct TYPE_5__ {TYPE_1__* loopback_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int unlink (int *) ;

void loopback_write_unlink (hashcat_ctx_t *hashcat_ctx)
{
  loopback_ctx_t *loopback_ctx = hashcat_ctx->loopback_ctx;

  if (loopback_ctx->enabled == 0) return;

  if (loopback_ctx->filename == ((void*)0)) return;

  unlink (loopback_ctx->filename);
}
