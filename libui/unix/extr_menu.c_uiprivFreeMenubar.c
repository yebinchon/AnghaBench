
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ guint ;
typedef int GtkWidget ;


 int GTK_CONTAINER (int *) ;
 int freeMenu ;
 int gtk_container_foreach (int ,int ,scalar_t__*) ;

void uiprivFreeMenubar(GtkWidget *mb)
{
 guint i;

 i = 0;
 gtk_container_foreach(GTK_CONTAINER(mb), freeMenu, &i);

}
