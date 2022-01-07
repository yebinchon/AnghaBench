
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int ENODATA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int fwnode_property_read_string_array (struct fwnode_handle const*,char const*,char const**,int) ;
 char** kcalloc (int,int,int ) ;
 int kfree (char const**) ;
 int match_string (char const**,int,char const*) ;

int fwnode_property_match_string(const struct fwnode_handle *fwnode,
 const char *propname, const char *string)
{
 const char **values;
 int nval, ret;

 nval = fwnode_property_read_string_array(fwnode, propname, ((void*)0), 0);
 if (nval < 0)
  return nval;

 if (nval == 0)
  return -ENODATA;

 values = kcalloc(nval, sizeof(*values), GFP_KERNEL);
 if (!values)
  return -ENOMEM;

 ret = fwnode_property_read_string_array(fwnode, propname, values, nval);
 if (ret < 0)
  goto out;

 ret = match_string(values, nval, string);
 if (ret < 0)
  ret = -ENODATA;
out:
 kfree(values);
 return ret;
}
