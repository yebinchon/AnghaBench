
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_CDMA_CSG_CFG ;
 int FE_ICS_GEN_EN ;
 int FE_TCS_GEN_EN ;
 int FE_UCS_GEN_EN ;
 int fe_r32 (int ) ;
 int fe_w32 (int,int ) ;

__attribute__((used)) static void fe_txcsum_config(bool enable)
{
 if (enable)
  fe_w32(fe_r32(FE_CDMA_CSG_CFG) | (FE_ICS_GEN_EN |
     FE_TCS_GEN_EN | FE_UCS_GEN_EN),
    FE_CDMA_CSG_CFG);
 else
  fe_w32(fe_r32(FE_CDMA_CSG_CFG) & ~(FE_ICS_GEN_EN |
     FE_TCS_GEN_EN | FE_UCS_GEN_EN),
    FE_CDMA_CSG_CFG);
}
