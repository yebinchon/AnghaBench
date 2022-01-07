
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_bus {scalar_t__ nr_cores; int cores; scalar_t__ num; } ;


 int INIT_LIST_HEAD (int *) ;
 int bcma_bus_next_num ;
 int bcma_buses_mutex ;
 int bcma_detect_chip (struct bcma_bus*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void bcma_init_bus(struct bcma_bus *bus)
{
 mutex_lock(&bcma_buses_mutex);
 bus->num = bcma_bus_next_num++;
 mutex_unlock(&bcma_buses_mutex);

 INIT_LIST_HEAD(&bus->cores);
 bus->nr_cores = 0;

 bcma_detect_chip(bus);
}
