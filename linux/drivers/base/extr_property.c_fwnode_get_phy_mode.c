
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int ENODEV ;
 int PHY_INTERFACE_MODE_MAX ;
 int fwnode_property_read_string (struct fwnode_handle*,char*,char const**) ;
 int phy_modes (int) ;
 int strcasecmp (char const*,int ) ;

int fwnode_get_phy_mode(struct fwnode_handle *fwnode)
{
 const char *pm;
 int err, i;

 err = fwnode_property_read_string(fwnode, "phy-mode", &pm);
 if (err < 0)
  err = fwnode_property_read_string(fwnode,
        "phy-connection-type", &pm);
 if (err < 0)
  return err;

 for (i = 0; i < PHY_INTERFACE_MODE_MAX; i++)
  if (!strcasecmp(pm, phy_modes(i)))
   return i;

 return -ENODEV;
}
