
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;
struct backend_info {struct xenbus_device* dev; } ;



struct xenbus_device *xen_blkbk_xenbus(struct backend_info *be)
{
 return be->dev;
}
