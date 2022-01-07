
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_mapping {int name; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (struct mt7530_mapping*) ;
 struct mt7530_mapping* mt7530_defaults ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 int strcmp (char const*,int ) ;

struct mt7530_mapping*
mt7530_find_mapping(struct device_node *np)
{
 const char *map;
 int i;

 if (of_property_read_string(np, "mediatek,portmap", &map))
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(mt7530_defaults); i++)
  if (!strcmp(map, mt7530_defaults[i].name))
   return &mt7530_defaults[i];

 return ((void*)0);
}
