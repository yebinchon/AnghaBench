
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* backend_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {int * cuda; } ;
typedef TYPE_2__ backend_ctx_t ;
struct TYPE_7__ {scalar_t__ lib; } ;
typedef TYPE_3__ CUDA_PTR ;


 int hc_dlclose (scalar_t__) ;
 int hcfree (int *) ;

void cuda_close (hashcat_ctx_t *hashcat_ctx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  CUDA_PTR *cuda = (CUDA_PTR *) backend_ctx->cuda;

  if (cuda)
  {
    if (cuda->lib)
    {
      hc_dlclose (cuda->lib);
    }

    hcfree (backend_ctx->cuda);

    backend_ctx->cuda = ((void*)0);
  }
}
