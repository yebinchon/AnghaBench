
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs2000_priv {int dummy; } ;


 int CLKSKIPEN ;
 int DEVICE_CFG1 ;
 int ENDEV1 ;
 int ENDEV2 ;
 int FUNC_CFG1 ;
 int FUNC_CFG2 ;
 int GLOBAL_CFG ;
 int LFRATIO_12_20 ;
 int LFRATIO_MASK ;
 int cs2000_bset (struct cs2000_priv*,int ,int ,int ) ;

__attribute__((used)) static int cs2000_enable_dev_config(struct cs2000_priv *priv, bool enable)
{
 int ret;

 ret = cs2000_bset(priv, DEVICE_CFG1, ENDEV1,
     enable ? ENDEV1 : 0);
 if (ret < 0)
  return ret;

 ret = cs2000_bset(priv, GLOBAL_CFG, ENDEV2,
     enable ? ENDEV2 : 0);
 if (ret < 0)
  return ret;

 ret = cs2000_bset(priv, FUNC_CFG1, CLKSKIPEN,
     enable ? CLKSKIPEN : 0);
 if (ret < 0)
  return ret;


 ret = cs2000_bset(priv, FUNC_CFG2, LFRATIO_MASK,
     LFRATIO_12_20);
 if (ret < 0)
  return ret;

 return 0;
}
