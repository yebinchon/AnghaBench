
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int module_ctx_t ;
typedef int hashconfig_t ;
struct TYPE_3__ {int * module_ctx; int * hashconfig; } ;
typedef TYPE_1__ hashcat_ctx_t ;


 int memset (int *,int ,int) ;
 int module_unload (int *) ;

void hashconfig_destroy (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  module_ctx_t *module_ctx = hashcat_ctx->module_ctx;

  module_unload (module_ctx);

  memset (hashconfig, 0, sizeof (hashconfig_t));
}
