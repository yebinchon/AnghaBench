
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hash_name; } ;
typedef TYPE_1__ hashconfig_t ;
struct TYPE_5__ {TYPE_1__* hashconfig; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 char* hcstrdup (int ) ;

char *status_get_hash_name (const hashcat_ctx_t *hashcat_ctx)
{
  const hashconfig_t *hashconfig = hashcat_ctx->hashconfig;

  return hcstrdup (hashconfig->hash_name);
}
