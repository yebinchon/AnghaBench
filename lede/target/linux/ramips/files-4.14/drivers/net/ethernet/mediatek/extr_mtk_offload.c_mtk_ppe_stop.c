
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mtk_eth {int dev; TYPE_2__* foe_table; } ;
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ bfib1; } ;


 int ETIMEDOUT ;
 int FOE_STATE_INVALID ;
 int MTK_GDMA_FWD_CFG (int) ;
 int MTK_PPE_CAH_CTRL_EN ;
 int MTK_PPE_CAH_CTRL_X_MODE ;
 int MTK_PPE_ENTRY_CNT ;
 int MTK_PPE_FLOW_CFG_FMC_FOE ;
 int MTK_PPE_FLOW_CFG_FUC_FOE ;
 int MTK_PPE_FLOW_CFG_IPV4_NAPT_EN ;
 int MTK_PPE_FLOW_CFG_IPV4_NAT_EN ;
 int MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN ;
 int MTK_PPE_GLO_CFG_EN ;
 int MTK_PPE_TB_CFG_FIN_AGE ;
 int MTK_PPE_TB_CFG_NTU_AGE ;
 int MTK_PPE_TB_CFG_TCP_AGE ;
 int MTK_PPE_TB_CFG_UDP_AGE ;
 int MTK_PPE_TB_CFG_UNBD_AGE ;
 int MTK_REG_PPE_CAH_CTRL ;
 int MTK_REG_PPE_FLOW_CFG ;
 int MTK_REG_PPE_GLO_CFG ;
 int MTK_REG_PPE_TB_BASE ;
 int MTK_REG_PPE_TB_CFG ;
 int dev_info (int ,char*,...) ;
 int mtk_m32 (struct mtk_eth*,int,int,int ) ;
 scalar_t__ mtk_ppe_busy_wait (struct mtk_eth*) ;
 int mtk_r32 (struct mtk_eth*,int) ;
 int mtk_w32 (struct mtk_eth*,int,int) ;

__attribute__((used)) static int mtk_ppe_stop(struct mtk_eth *eth)
{
 u32 r1 = 0, r2 = 0;
 int i;


 mtk_m32(eth, 0xffff, 0x7777, MTK_GDMA_FWD_CFG(0));
 mtk_m32(eth, 0xffff, 0x7777, MTK_GDMA_FWD_CFG(1));

 if (mtk_ppe_busy_wait(eth))
  return -ETIMEDOUT;


 for (i = 0; i < MTK_PPE_ENTRY_CNT; i++)
  eth->foe_table[i].bfib1.state = FOE_STATE_INVALID;


 mtk_m32(eth, 0, MTK_PPE_CAH_CTRL_X_MODE, MTK_REG_PPE_CAH_CTRL);
 mtk_m32(eth, MTK_PPE_CAH_CTRL_X_MODE | MTK_PPE_CAH_CTRL_EN, 0,
  MTK_REG_PPE_CAH_CTRL);


 mtk_m32(eth, MTK_PPE_GLO_CFG_EN, 0, MTK_REG_PPE_GLO_CFG);


 mtk_m32(eth,
  MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN |
  MTK_PPE_FLOW_CFG_IPV4_NAPT_EN | MTK_PPE_FLOW_CFG_IPV4_NAT_EN |
  MTK_PPE_FLOW_CFG_FUC_FOE | MTK_PPE_FLOW_CFG_FMC_FOE,
  0, MTK_REG_PPE_FLOW_CFG);


 mtk_m32(eth, 0,
  MTK_PPE_TB_CFG_FIN_AGE | MTK_PPE_TB_CFG_UDP_AGE |
  MTK_PPE_TB_CFG_TCP_AGE | MTK_PPE_TB_CFG_UNBD_AGE |
  MTK_PPE_TB_CFG_NTU_AGE, MTK_REG_PPE_TB_CFG);

 r1 = mtk_r32(eth, 0x100);
 r2 = mtk_r32(eth, 0x10c);

 dev_info(eth->dev, "0x100 = 0x%x, 0x10c = 0x%x\n", r1, r2);

 if (((r1 & 0xff00) >> 0x8) >= (r1 & 0xff) ||
     ((r1 & 0xff00) >> 0x8) >= (r2 & 0xff)) {
  dev_info(eth->dev, "reset pse\n");
  mtk_w32(eth, 0x1, 0x4);
 }


 mtk_w32(eth, 0, MTK_REG_PPE_TB_BASE);

 if (mtk_ppe_busy_wait(eth))
  return -ETIMEDOUT;






 mtk_m32(eth, 0xffff, 0x5555, MTK_GDMA_FWD_CFG(0));
 mtk_m32(eth, 0xffff, 0x5555, MTK_GDMA_FWD_CFG(1));

 return 0;
}
