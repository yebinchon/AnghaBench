
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct device_node {int dummy; } ;


 int of_property_read_u32_index (struct device_node*,char*,int ,scalar_t__*) ;

__attribute__((used)) static bool valid_cpu_drc_index(struct device_node *parent, u32 drc_index)
{
 bool found = 0;
 int rc, index;

 index = 0;
 while (!found) {
  u32 drc;

  rc = of_property_read_u32_index(parent, "ibm,drc-indexes",
      index++, &drc);
  if (rc)
   break;

  if (drc == drc_index)
   found = 1;
 }

 return found;
}
