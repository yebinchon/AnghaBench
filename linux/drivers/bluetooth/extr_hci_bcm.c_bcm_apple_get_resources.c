
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_device {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int bcm_apple_get_resources(struct bcm_device *dev)
{
 return -EOPNOTSUPP;
}
