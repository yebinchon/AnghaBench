
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_device {int dummy; } ;


 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static inline int null_zone_init(struct nullb_device *dev)
{
 pr_err("CONFIG_BLK_DEV_ZONED not enabled\n");
 return -EINVAL;
}
