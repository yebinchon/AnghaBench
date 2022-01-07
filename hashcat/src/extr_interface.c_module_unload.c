
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ module_handle; } ;
typedef TYPE_1__ module_ctx_t ;


 int hc_dlclose (scalar_t__) ;

void module_unload (module_ctx_t *module_ctx)
{
  if (module_ctx->module_handle)
  {
    hc_dlclose (module_ctx->module_handle);
  }
}
