
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct he_dev {int dummy; } ;


 int CON_CTL ;
 unsigned int CON_CTL_ADDR (unsigned int) ;
 int CON_CTL_BUSY ;
 unsigned int CON_CTL_READ ;
 int CON_DAT ;
 int he_readl (struct he_dev*,int ) ;
 int he_writel (struct he_dev*,unsigned int,int ) ;

__attribute__((used)) static unsigned
he_readl_internal(struct he_dev *he_dev, unsigned addr, unsigned flags)
{
 he_writel(he_dev, flags | CON_CTL_READ | CON_CTL_ADDR(addr), CON_CTL);
 while (he_readl(he_dev, CON_CTL) & CON_CTL_BUSY);
 return he_readl(he_dev, CON_DAT);
}
