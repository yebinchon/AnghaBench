
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int rst_ppe; int dev; } ;


 int ETIMEDOUT ;
 scalar_t__ HZ ;
 int MTK_PPE_GLO_CFG_BUSY ;
 int MTK_REG_PPE_GLO_CFG ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int mtk_r32 (struct mtk_eth*,int ) ;
 int reset_control_reset (int ) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mtk_ppe_busy_wait(struct mtk_eth *eth)
{
 unsigned long t_start = jiffies;
 u32 r = 0;

 while (1) {
  r = mtk_r32(eth, MTK_REG_PPE_GLO_CFG);
  if (!(r & MTK_PPE_GLO_CFG_BUSY))
   return 0;
  if (time_after(jiffies, t_start + HZ))
   break;
  usleep_range(10, 20);
 }

 dev_err(eth->dev, "ppe: table busy timeout - resetting\n");
 reset_control_reset(eth->rst_ppe);

 return -ETIMEDOUT;
}
