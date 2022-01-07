
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_bridge_data {int dummy; } ;


 int * agp_bridge ;
 int agp_bridges ;
 int kfree (struct agp_bridge_data*) ;
 scalar_t__ list_empty (int *) ;

void agp_put_bridge(struct agp_bridge_data *bridge)
{
        kfree(bridge);

        if (list_empty(&agp_bridges))
                agp_bridge = ((void*)0);
}
