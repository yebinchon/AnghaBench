
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs2000_priv {int dummy; } ;


 int AUXOUTDIS ;
 int CLKOUTDIS ;
 int DEVICE_CTRL ;
 int cs2000_bset (struct cs2000_priv*,int ,int,int) ;

__attribute__((used)) static int cs2000_clk_out_enable(struct cs2000_priv *priv, bool enable)
{

 return cs2000_bset(priv, DEVICE_CTRL,
      (AUXOUTDIS | CLKOUTDIS),
      enable ? 0 :
      (AUXOUTDIS | CLKOUTDIS));
}
