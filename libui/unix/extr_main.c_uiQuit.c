
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdk_threads_add_idle (int ,int *) ;
 int quit ;

void uiQuit(void)
{
 gdk_threads_add_idle(quit, ((void*)0));
}
