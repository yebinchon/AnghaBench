
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ag71xx {int dummy; } ;


 unsigned int MII_CTRL_IF_MASK ;
 unsigned int ag71xx_mii_ctrl_rr (struct ag71xx*) ;
 int ag71xx_mii_ctrl_wr (struct ag71xx*,unsigned int) ;

__attribute__((used)) static void inline ag71xx_mii_ctrl_set_if(struct ag71xx *ag,
       unsigned int mii_if)
{
 u32 t;

 t = ag71xx_mii_ctrl_rr(ag);
 t &= ~(MII_CTRL_IF_MASK);
 t |= (mii_if & MII_CTRL_IF_MASK);
 ag71xx_mii_ctrl_wr(ag, t);
}
