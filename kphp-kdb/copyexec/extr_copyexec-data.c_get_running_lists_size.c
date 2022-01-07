
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auto_running_list ;
 int child_running_list ;
 int get_tlist_size (int *) ;

void get_running_lists_size (int *child_size, int *auto_size) {
  *child_size = get_tlist_size (&child_running_list);
  *auto_size = get_tlist_size (&auto_running_list);
}
