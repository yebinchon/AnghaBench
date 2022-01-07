
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs2000_priv {int dummy; } ;


 int EINVAL ;
 int FUNC_CFG1 ;
 int REFCLKDIV (int) ;
 int REFCLKDIV_MASK ;
 int cs2000_bset (struct cs2000_priv*,int ,int ,int ) ;

__attribute__((used)) static int cs2000_clk_in_bound_rate(struct cs2000_priv *priv,
        u32 rate_in)
{
 u32 val;

 if (rate_in >= 32000000 && rate_in < 56000000)
  val = 0x0;
 else if (rate_in >= 16000000 && rate_in < 28000000)
  val = 0x1;
 else if (rate_in >= 8000000 && rate_in < 14000000)
  val = 0x2;
 else
  return -EINVAL;

 return cs2000_bset(priv, FUNC_CFG1,
      REFCLKDIV_MASK,
      REFCLKDIV(val));
}
