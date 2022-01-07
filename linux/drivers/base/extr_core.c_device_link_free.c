
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_link {int supplier; int consumer; int rpm_active; } ;


 int kfree (struct device_link*) ;
 int pm_runtime_put (int ) ;
 int put_device (int ) ;
 scalar_t__ refcount_dec_not_one (int *) ;

__attribute__((used)) static void device_link_free(struct device_link *link)
{
 while (refcount_dec_not_one(&link->rpm_active))
  pm_runtime_put(link->supplier);

 put_device(link->consumer);
 put_device(link->supplier);
 kfree(link);
}
