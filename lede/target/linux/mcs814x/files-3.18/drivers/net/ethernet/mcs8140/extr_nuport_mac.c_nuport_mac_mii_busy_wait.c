
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nuport_mac_priv {int dummy; } ;


 int EBUSY ;
 int HZ ;
 int MII_ADDR_REG ;
 int MII_BUSY ;
 int cpu_relax () ;
 int jiffies ;
 int nuport_mac_readl (int ) ;
 int time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static inline int nuport_mac_mii_busy_wait(struct nuport_mac_priv *priv)
{
 unsigned long curr;
 unsigned long finish = jiffies + 3 * HZ;

 do {
  curr = jiffies;
  if (!(nuport_mac_readl(MII_ADDR_REG) & MII_BUSY))
   return 0;
  cpu_relax();
 } while (!time_after_eq(curr, finish));

 return -EBUSY;
}
