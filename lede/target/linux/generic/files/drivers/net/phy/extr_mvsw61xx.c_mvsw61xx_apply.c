
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;


 int mvsw61xx_update_state (struct switch_dev*) ;

__attribute__((used)) static int mvsw61xx_apply(struct switch_dev *dev)
{
 return mvsw61xx_update_state(dev);
}
