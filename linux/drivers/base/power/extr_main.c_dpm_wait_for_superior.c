
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;


 int dpm_wait (int ,int) ;
 int dpm_wait_for_suppliers (struct device*,int) ;

__attribute__((used)) static void dpm_wait_for_superior(struct device *dev, bool async)
{
 dpm_wait(dev->parent, async);
 dpm_wait_for_suppliers(dev, async);
}
