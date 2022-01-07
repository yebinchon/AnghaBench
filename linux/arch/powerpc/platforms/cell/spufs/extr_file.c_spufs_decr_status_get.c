
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int mfc_control_RW; } ;
struct TYPE_4__ {TYPE_1__ priv2; } ;
struct spu_context {TYPE_2__ csa; } ;


 int MFC_CNTL_DECREMENTER_RUNNING ;
 int SPU_DECR_STATUS_RUNNING ;

__attribute__((used)) static u64 spufs_decr_status_get(struct spu_context *ctx)
{
 if (ctx->csa.priv2.mfc_control_RW & MFC_CNTL_DECREMENTER_RUNNING)
  return SPU_DECR_STATUS_RUNNING;
 else
  return 0;
}
