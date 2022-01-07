
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {scalar_t__ eedump_len; scalar_t__ regdump_len; scalar_t__ testinfo_len; scalar_t__ n_stats; int bus_info; int fw_version; int version; int driver; } ;


 int strncpy (int ,char*,int) ;

__attribute__((used)) static void nuport_mac_ethtool_drvinfo(struct net_device *dev,
     struct ethtool_drvinfo *info)
{
 strncpy(info->driver, "nuport-mac", sizeof(info->driver));
 strncpy(info->version, "0.1", sizeof(info->version));
 strncpy(info->fw_version, "N/A", sizeof(info->fw_version));
 strncpy(info->bus_info, "internal", sizeof(info->bus_info));
 info->n_stats = 0;
 info->testinfo_len = 0;
 info->regdump_len = 0;
 info->eedump_len = 0;
}
