
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int fwnode_property_read_string_array (struct fwnode_handle const*,char const*,char const**,int) ;

int fwnode_property_read_string(const struct fwnode_handle *fwnode,
    const char *propname, const char **val)
{
 int ret = fwnode_property_read_string_array(fwnode, propname, val, 1);

 return ret < 0 ? ret : 0;
}
