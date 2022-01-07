
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_bridge_data {int dummy; } ;
struct _parisc_agp_info {int * gatt; } ;


 int SBA_AGPGART_COOKIE ;
 struct _parisc_agp_info parisc_agp_info ;

__attribute__((used)) static int
parisc_agp_free_gatt_table(struct agp_bridge_data *bridge)
{
 struct _parisc_agp_info *info = &parisc_agp_info;

 info->gatt[0] = SBA_AGPGART_COOKIE;

 return 0;
}
