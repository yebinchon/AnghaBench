
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct b53_device {int reg_mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read32 ) (struct b53_device*,int ,int ,int *) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct b53_device*,int ,int ,int *) ;

__attribute__((used)) static inline int b53_read32(struct b53_device *dev, u8 page, u8 reg, u32 *val)
{
 int ret;

 mutex_lock(&dev->reg_mutex);
 ret = dev->ops->read32(dev, page, reg, val);
 mutex_unlock(&dev->reg_mutex);

 return ret;
}
