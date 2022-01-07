
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int list; } ;


 struct menu* current_entry ;
 struct menu* current_menu ;
 int * last_entry_ptr ;
 int menu_end_entry () ;

struct menu *menu_add_menu(void)
{
 menu_end_entry();
 last_entry_ptr = &current_entry->list;
 return current_menu = current_entry;
}
