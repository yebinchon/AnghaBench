
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_bridge_data {TYPE_1__* driver; int list; } ;
struct TYPE_2__ {int owner; } ;


 int agp_backend_cleanup (struct agp_bridge_data*) ;
 int agp_bridges ;
 int agp_frontend_cleanup () ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int module_put (int ) ;

void agp_remove_bridge(struct agp_bridge_data *bridge)
{
 agp_backend_cleanup(bridge);
 list_del(&bridge->list);
 if (list_empty(&agp_bridges))
  agp_frontend_cleanup();
 module_put(bridge->driver->owner);
}
