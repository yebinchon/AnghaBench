
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 char* DRIVER_NAME ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void uml_net_get_drvinfo(struct net_device *dev,
    struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
 strlcpy(info->version, "42", sizeof(info->version));
}
