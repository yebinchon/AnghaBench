
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkContainer ;


 int gtk_container_set_border_width (int *,int ) ;
 int uiprivGTKXMargin ;

void uiprivSetMargined(GtkContainer *c, int margined)
{
 if (margined)
  gtk_container_set_border_width(c, uiprivGTKXMargin);
 else
  gtk_container_set_border_width(c, 0);
}
