
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int DEVHASH ;
 int DEVSEED ;
 int dev_hash_value ;
 int dev_name (struct device*) ;
 int hash_string (int ,int ,int ) ;

void set_trace_device(struct device *dev)
{
 dev_hash_value = hash_string(DEVSEED, dev_name(dev), DEVHASH);
}
