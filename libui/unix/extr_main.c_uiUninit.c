
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_hash_table_destroy (int ) ;
 int g_hash_table_foreach (int ,int ,int *) ;
 int timers ;
 int uiprivUninitAlloc () ;
 int uiprivUninitMenus () ;
 int uninitTimer ;

void uiUninit(void)
{
 g_hash_table_foreach(timers, uninitTimer, ((void*)0));
 g_hash_table_destroy(timers);
 uiprivUninitMenus();
 uiprivUninitAlloc();
}
