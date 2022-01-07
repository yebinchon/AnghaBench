
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* backend_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_9__ {int enabled; int opencl_platforms_version; int opencl_platforms_vendor_id; int opencl_platforms_vendor; int opencl_platforms_name; int opencl_platforms_devices_cnt; int opencl_platforms_devices; int opencl_platforms; scalar_t__ ocl; int devices_param; } ;
typedef TYPE_2__ backend_ctx_t ;


 int cuda_close (TYPE_1__*) ;
 int hcfree (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int nvrtc_close (TYPE_1__*) ;
 int ocl_close (TYPE_1__*) ;

void backend_ctx_destroy (hashcat_ctx_t *hashcat_ctx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  if (backend_ctx->enabled == 0) return;

  hcfree (backend_ctx->devices_param);

  if (backend_ctx->ocl)
  {
    hcfree (backend_ctx->opencl_platforms);
    hcfree (backend_ctx->opencl_platforms_devices);
    hcfree (backend_ctx->opencl_platforms_devices_cnt);
    hcfree (backend_ctx->opencl_platforms_name);
    hcfree (backend_ctx->opencl_platforms_vendor);
    hcfree (backend_ctx->opencl_platforms_vendor_id);
    hcfree (backend_ctx->opencl_platforms_version);
  }

  nvrtc_close (hashcat_ctx);
  cuda_close (hashcat_ctx);
  ocl_close (hashcat_ctx);

  memset (backend_ctx, 0, sizeof (backend_ctx_t));
}
