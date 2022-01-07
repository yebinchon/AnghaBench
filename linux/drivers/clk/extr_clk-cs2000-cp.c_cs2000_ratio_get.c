
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs2000_priv {int dummy; } ;
typedef scalar_t__ s32 ;


 unsigned int RATIO_REG_SIZE ;
 int Ratio_Add (int,unsigned int) ;
 int Val_Ratio (scalar_t__,unsigned int) ;
 scalar_t__ cs2000_read (struct cs2000_priv*,int ) ;

__attribute__((used)) static u32 cs2000_ratio_get(struct cs2000_priv *priv, int ch)
{
 s32 tmp;
 u32 val;
 unsigned int i;

 val = 0;
 for (i = 0; i < RATIO_REG_SIZE; i++) {
  tmp = cs2000_read(priv, Ratio_Add(ch, i));
  if (tmp < 0)
   return 0;

  val |= Val_Ratio(tmp, i);
 }

 return val;
}
