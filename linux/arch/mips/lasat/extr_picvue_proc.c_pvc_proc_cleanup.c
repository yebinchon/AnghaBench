
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY_DIR_NAME ;
 int del_timer_sync (int *) ;
 int remove_proc_subtree (int ,int *) ;
 int timer ;

__attribute__((used)) static void pvc_proc_cleanup(void)
{
 remove_proc_subtree(DISPLAY_DIR_NAME, ((void*)0));
 del_timer_sync(&timer);
}
