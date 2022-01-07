
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gtk_main () ;
 int gtk_main_iteration_do ;
 int iteration ;

void uiMain(void)
{
 iteration = gtk_main_iteration_do;
 gtk_main();
}
