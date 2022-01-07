
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct badblocks {int dummy; } ;


 int EINVAL ;
 int __badblocks_init (struct device*,struct badblocks*,int) ;

int devm_init_badblocks(struct device *dev, struct badblocks *bb)
{
 if (!bb)
  return -EINVAL;
 return __badblocks_init(dev, bb, 1);
}
