
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;


 int _mvsw61xx_reset (struct switch_dev*,int) ;

__attribute__((used)) static int mvsw61xx_reset(struct switch_dev *dev)
{
 return _mvsw61xx_reset(dev, 0);
}
