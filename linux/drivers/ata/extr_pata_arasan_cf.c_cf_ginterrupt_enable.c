
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arasan_cf_dev {scalar_t__ vbase; } ;


 scalar_t__ GIRQ_SGN_EN ;
 scalar_t__ GIRQ_STS_EN ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cf_ginterrupt_enable(struct arasan_cf_dev *acdev, bool enable)
{

 writel(enable, acdev->vbase + GIRQ_STS_EN);
 writel(enable, acdev->vbase + GIRQ_SGN_EN);
}
