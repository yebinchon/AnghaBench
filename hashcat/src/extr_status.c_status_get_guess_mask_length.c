
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * mask; } ;
typedef TYPE_1__ mask_ctx_t ;
struct TYPE_6__ {int opts_type; } ;
typedef TYPE_2__ hashconfig_t ;
struct TYPE_7__ {TYPE_1__* mask_ctx; TYPE_2__* hashconfig; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 int mp_get_length (int *,int ) ;

int status_get_guess_mask_length (const hashcat_ctx_t *hashcat_ctx)
{
  const hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  const mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;

  if (mask_ctx == ((void*)0)) return -1;

  if (mask_ctx->mask == ((void*)0)) return -1;

  return mp_get_length (mask_ctx->mask, hashconfig->opts_type);
}
