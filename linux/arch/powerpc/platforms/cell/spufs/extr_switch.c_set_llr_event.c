
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct spu_state {scalar_t__* spu_chnlcnt_RW; scalar_t__* spu_chnldata_RW; } ;
struct spu {int dummy; } ;


 scalar_t__ MFC_LLR_LOST_EVENT ;

__attribute__((used)) static inline void set_llr_event(struct spu_state *csa, struct spu *spu)
{
 u64 ch0_cnt, ch0_data;
 u64 ch1_data;
 ch0_cnt = csa->spu_chnlcnt_RW[0];
 ch0_data = csa->spu_chnldata_RW[0];
 ch1_data = csa->spu_chnldata_RW[1];
 csa->spu_chnldata_RW[0] |= MFC_LLR_LOST_EVENT;
 if ((ch0_cnt == 0) && !(ch0_data & MFC_LLR_LOST_EVENT) &&
     (ch1_data & MFC_LLR_LOST_EVENT)) {
  csa->spu_chnlcnt_RW[0] = 1;
 }
}
