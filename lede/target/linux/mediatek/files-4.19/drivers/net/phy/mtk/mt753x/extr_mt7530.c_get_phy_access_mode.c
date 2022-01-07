
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_property_read_bool (struct device_node const*,char*) ;

__attribute__((used)) static inline bool get_phy_access_mode(const struct device_node *np)
{
 return of_property_read_bool(np, "mt7530,direct-phy-access");
}
