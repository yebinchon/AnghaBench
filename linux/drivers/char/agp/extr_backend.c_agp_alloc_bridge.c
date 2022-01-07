
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_bridge_data {int current_memory_agp; int agp_in_use; } ;


 int GFP_KERNEL ;
 struct agp_bridge_data* agp_bridge ;
 int agp_bridges ;
 int atomic_set (int *,int ) ;
 struct agp_bridge_data* kzalloc (int,int ) ;
 scalar_t__ list_empty (int *) ;

struct agp_bridge_data *agp_alloc_bridge(void)
{
 struct agp_bridge_data *bridge;

 bridge = kzalloc(sizeof(*bridge), GFP_KERNEL);
 if (!bridge)
  return ((void*)0);

 atomic_set(&bridge->agp_in_use, 0);
 atomic_set(&bridge->current_memory_agp, 0);

 if (list_empty(&agp_bridges))
  agp_bridge = bridge;

 return bridge;
}
