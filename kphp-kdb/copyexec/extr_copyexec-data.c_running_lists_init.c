
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auto_running_list ;
 int child_running_list ;
 int tlist_clear (int *) ;
 int vkprintf (int,char*) ;

void running_lists_init (void) {
  tlist_clear (&child_running_list);
  vkprintf (4, "tlist_clear (&auto_running_list)\n");
  tlist_clear (&auto_running_list);
}
