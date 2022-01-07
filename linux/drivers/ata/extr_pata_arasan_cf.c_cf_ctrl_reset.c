
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arasan_cf_dev {scalar_t__ vbase; } ;


 int CFHOST_ENB ;
 scalar_t__ OP_MODE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void cf_ctrl_reset(struct arasan_cf_dev *acdev)
{
 writel(readl(acdev->vbase + OP_MODE) & ~CFHOST_ENB,
   acdev->vbase + OP_MODE);
 writel(readl(acdev->vbase + OP_MODE) | CFHOST_ENB,
   acdev->vbase + OP_MODE);
}
