
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 struct device* device_connection_find_match (struct device*,char const*,int *,int ) ;
 int generic_match ;

struct device *device_connection_find(struct device *dev, const char *con_id)
{
 return device_connection_find_match(dev, con_id, ((void*)0), generic_match);
}
