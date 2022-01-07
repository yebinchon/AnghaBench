
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct he_dev {int dummy; } ;


 int CON_CTL ;
 unsigned int CON_CTL_ADDR (unsigned int) ;
 int CON_CTL_BUSY ;
 unsigned int CON_CTL_WRITE ;
 int CON_DAT ;
 int he_readl (struct he_dev*,int ) ;
 int he_writel (struct he_dev*,unsigned int,int ) ;

__attribute__((used)) static __inline__ void
he_writel_internal(struct he_dev *he_dev, unsigned val, unsigned addr,
        unsigned flags)
{
 he_writel(he_dev, val, CON_DAT);
 (void) he_readl(he_dev, CON_DAT);
 he_writel(he_dev, flags | CON_CTL_WRITE | CON_CTL_ADDR(addr), CON_CTL);
 while (he_readl(he_dev, CON_CTL) & CON_CTL_BUSY);
}
