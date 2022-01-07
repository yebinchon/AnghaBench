
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property_entry {scalar_t__ name; } ;


 int kfree (struct property_entry const*) ;
 int property_entry_free_data (struct property_entry const*) ;

void property_entries_free(const struct property_entry *properties)
{
 const struct property_entry *p;

 if (!properties)
  return;

 for (p = properties; p->name; p++)
  property_entry_free_data(p);

 kfree(properties);
}
