
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int schedule_work (int *) ;
 int topology_work ;

void topology_schedule_update(void)
{
 schedule_work(&topology_work);
}
