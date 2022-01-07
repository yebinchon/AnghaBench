
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__* spu_chnlcnt_RW; scalar_t__* spu_chnldata_RW; } ;
struct spu_context {TYPE_1__ csa; } ;



__attribute__((used)) static void gen_spu_event(struct spu_context *ctx, u32 event)
{
 u64 ch0_cnt;
 u64 ch0_data;
 u64 ch1_data;

 ch0_cnt = ctx->csa.spu_chnlcnt_RW[0];
 ch0_data = ctx->csa.spu_chnldata_RW[0];
 ch1_data = ctx->csa.spu_chnldata_RW[1];
 ctx->csa.spu_chnldata_RW[0] |= event;
 if ((ch0_cnt == 0) && !(ch0_data & event) && (ch1_data & event)) {
  ctx->csa.spu_chnlcnt_RW[0] = 1;
 }
}
