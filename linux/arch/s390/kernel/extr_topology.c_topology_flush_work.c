
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_work (int *) ;
 int topology_work ;

__attribute__((used)) static void topology_flush_work(void)
{
 flush_work(&topology_work);
}
