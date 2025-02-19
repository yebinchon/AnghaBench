
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* backend_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {int backend_devices_cnt; } ;
typedef TYPE_2__ backend_ctx_t ;


 scalar_t__ status_get_hashes_msec_dev (TYPE_1__ const*,int) ;

double status_get_hashes_msec_all (const hashcat_ctx_t *hashcat_ctx)
{
  const backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  double hashes_all_msec = 0;

  for (int backend_devices_idx = 0; backend_devices_idx < backend_ctx->backend_devices_cnt; backend_devices_idx++)
  {
    hashes_all_msec += status_get_hashes_msec_dev (hashcat_ctx, backend_devices_idx);
  }

  return hashes_all_msec;
}
