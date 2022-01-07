
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsw_mt753x {int dummy; } ;


 int mt753x_apply_vlan_config (struct gsw_mt753x*) ;

__attribute__((used)) static inline int mt753x_swconfig_init(struct gsw_mt753x *gsw)
{
 mt753x_apply_vlan_config(gsw);

 return 0;
}
