
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sata_gemini {scalar_t__ muxmode; int dev; scalar_t__ base; } ;


 int ENODEV ;
 scalar_t__ GEMINI_MUXMODE_2 ;
 scalar_t__ GEMINI_MUXMODE_3 ;
 scalar_t__ GEMINI_SATA0_CTRL ;
 scalar_t__ GEMINI_SATA0_STATUS ;
 scalar_t__ GEMINI_SATA1_CTRL ;
 scalar_t__ GEMINI_SATA1_STATUS ;
 int GEMINI_SATA_CTRL_EN ;
 int GEMINI_SATA_CTRL_HOTPLUG_DETECT_EN ;
 int GEMINI_SATA_CTRL_SLAVE_EN ;
 int GEMINI_SATA_STATUS_PHY_READY ;
 int HZ ;
 int dev_info (int ,char*,unsigned int,char*) ;
 int jiffies ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_before (int,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int gemini_sata_setup_bridge(struct sata_gemini *sg,
        unsigned int bridge)
{
 unsigned long timeout = jiffies + (HZ * 1);
 bool bridge_online;
 u32 val;

 if (bridge == 0) {
  val = GEMINI_SATA_CTRL_HOTPLUG_DETECT_EN | GEMINI_SATA_CTRL_EN;

  if (sg->muxmode == GEMINI_MUXMODE_2)
   val |= GEMINI_SATA_CTRL_SLAVE_EN;
  writel(val, sg->base + GEMINI_SATA0_CTRL);
 } else {
  val = GEMINI_SATA_CTRL_HOTPLUG_DETECT_EN | GEMINI_SATA_CTRL_EN;

  if (sg->muxmode == GEMINI_MUXMODE_3)
   val |= GEMINI_SATA_CTRL_SLAVE_EN;
  writel(val, sg->base + GEMINI_SATA1_CTRL);
 }


 msleep(10);


 do {
  msleep(100);

  if (bridge == 0)
   val = readl(sg->base + GEMINI_SATA0_STATUS);
  else
   val = readl(sg->base + GEMINI_SATA1_STATUS);
  if (val & GEMINI_SATA_STATUS_PHY_READY)
   break;
 } while (time_before(jiffies, timeout));

 bridge_online = !!(val & GEMINI_SATA_STATUS_PHY_READY);

 dev_info(sg->dev, "SATA%d PHY %s\n", bridge,
   bridge_online ? "ready" : "not ready");

 return bridge_online ? 0: -ENODEV;
}
