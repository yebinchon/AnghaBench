
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dpm_wait_for_children (struct device*,int) ;
 int dpm_wait_for_consumers (struct device*,int) ;

__attribute__((used)) static void dpm_wait_for_subordinate(struct device *dev, bool async)
{
 dpm_wait_for_children(dev, async);
 dpm_wait_for_consumers(dev, async);
}
