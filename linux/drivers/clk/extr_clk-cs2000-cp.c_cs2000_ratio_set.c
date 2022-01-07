
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs2000_priv {int dummy; } ;


 scalar_t__ CH_SIZE_ERR (int) ;
 int EINVAL ;
 unsigned int RATIO_REG_SIZE ;
 int Ratio_Add (int,unsigned int) ;
 int Ratio_Val (int ,unsigned int) ;
 int cs2000_rate_to_ratio (int ,int ) ;
 int cs2000_write (struct cs2000_priv*,int ,int ) ;

__attribute__((used)) static int cs2000_ratio_set(struct cs2000_priv *priv,
       int ch, u32 rate_in, u32 rate_out)
{
 u32 val;
 unsigned int i;
 int ret;

 if (CH_SIZE_ERR(ch))
  return -EINVAL;

 val = cs2000_rate_to_ratio(rate_in, rate_out);
 for (i = 0; i < RATIO_REG_SIZE; i++) {
  ret = cs2000_write(priv,
       Ratio_Add(ch, i),
       Ratio_Val(val, i));
  if (ret < 0)
   return ret;
 }

 return 0;
}
