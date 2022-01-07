
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_controller_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* deassert ) (struct reset_controller_dev*,unsigned long) ;int (* assert ) (struct reset_controller_dev*,unsigned long) ;} ;


 int stub1 (struct reset_controller_dev*,unsigned long) ;
 int stub2 (struct reset_controller_dev*,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int qcom_reset(struct reset_controller_dev *rcdev, unsigned long id)
{
 rcdev->ops->assert(rcdev, id);
 udelay(1);
 rcdev->ops->deassert(rcdev, id);
 return 0;
}
