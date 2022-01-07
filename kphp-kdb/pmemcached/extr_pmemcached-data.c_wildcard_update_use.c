
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wildcard_entry {int dummy; } ;


 int wildcard_add_use (struct wildcard_entry*) ;
 int wildcard_del_use (struct wildcard_entry*) ;

void wildcard_update_use (struct wildcard_entry *entry) {
  wildcard_del_use (entry);
  wildcard_add_use (entry);
}
