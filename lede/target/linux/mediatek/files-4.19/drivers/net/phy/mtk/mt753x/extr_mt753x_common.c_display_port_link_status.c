
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int dev; } ;


 int MAC_DPX_STS ;
 int MAC_LNK_STS ;




 int MAC_SPD_STS_M ;
 int MAC_SPD_STS_S ;
 int PMSR (int) ;
 int dev_info (int ,char*,int,...) ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;

__attribute__((used)) static void display_port_link_status(struct gsw_mt753x *gsw, u32 port)
{
 u32 pmsr, speed_bits;
 const char *speed;

 pmsr = mt753x_reg_read(gsw, PMSR(port));

 speed_bits = (pmsr & MAC_SPD_STS_M) >> MAC_SPD_STS_S;

 switch (speed_bits) {
 case 131:
  speed = "10Mbps";
  break;
 case 130:
  speed = "100Mbps";
  break;
 case 129:
  speed = "1Gbps";
  break;
 case 128:
  speed = "2.5Gbps";
  break;
 }

 if (pmsr & MAC_LNK_STS) {
  dev_info(gsw->dev, "Port %d Link is Up - %s/%s\n",
    port, speed, (pmsr & MAC_DPX_STS) ? "Full" : "Half");
 } else {
  dev_info(gsw->dev, "Port %d Link is Down\n", port);
 }
}
