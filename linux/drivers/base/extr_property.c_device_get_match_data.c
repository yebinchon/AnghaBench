
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_fwnode (struct device*) ;
 void const* fwnode_call_ptr_op (int ,void const* (*) (struct device*),struct device*) ;

const void *device_get_match_data(struct device *dev)
{
 return fwnode_call_ptr_op(dev_fwnode(dev), device_get_match_data, dev);
}
