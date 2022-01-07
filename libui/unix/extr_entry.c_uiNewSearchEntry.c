
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiEntry ;


 int * finishNewEntry (int ,char*) ;
 int gtk_search_entry_new () ;

uiEntry *uiNewSearchEntry(void)
{
 return finishNewEntry(gtk_search_entry_new(), "search-changed");
}
