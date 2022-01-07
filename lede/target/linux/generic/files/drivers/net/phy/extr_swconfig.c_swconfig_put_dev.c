
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int sw_mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void
swconfig_put_dev(struct switch_dev *dev)
{
 mutex_unlock(&dev->sw_mutex);
}
