
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ioremap {int list; int refcount; } ;


 int list_del_rcu (int *) ;

__attribute__((used)) static void acpi_os_drop_map_ref(struct acpi_ioremap *map)
{
 if (!--map->refcount)
  list_del_rcu(&map->list);
}
