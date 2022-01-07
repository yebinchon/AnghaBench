
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs2000_priv {int dummy; } ;


 int AUTORMOD ;
 scalar_t__ CH_SIZE_ERR (int) ;
 int DEVICE_CFG1 ;
 int DEVICE_CFG2 ;
 int EINVAL ;
 int FRACNSRC_MASK ;
 int FRACNSRC_STATIC ;
 int LOCKCLK (int) ;
 int LOCKCLK_MASK ;
 int RSEL (int) ;
 int RSEL_MASK ;
 int cs2000_bset (struct cs2000_priv*,int ,int,int) ;

__attribute__((used)) static int cs2000_ratio_select(struct cs2000_priv *priv, int ch)
{
 int ret;

 if (CH_SIZE_ERR(ch))
  return -EINVAL;






 ret = cs2000_bset(priv, DEVICE_CFG1, RSEL_MASK, RSEL(ch));
 if (ret < 0)
  return ret;

 ret = cs2000_bset(priv, DEVICE_CFG2,
     (AUTORMOD | LOCKCLK_MASK | FRACNSRC_MASK),
     (LOCKCLK(ch) | FRACNSRC_STATIC));
 if (ret < 0)
  return ret;

 return 0;
}
