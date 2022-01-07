
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ P420M_DEVICE_ID ;

__attribute__((used)) static int mtip_device_unaligned_constrained(struct driver_data *dd)
{
 return (dd->pdev->device == P420M_DEVICE_ID ? 1 : 0);
}
