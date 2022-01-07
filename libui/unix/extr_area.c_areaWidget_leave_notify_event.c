
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GtkWidget ;
typedef int GdkEventCrossing ;


 int areaWidget (int *) ;
 int onCrossing (int ,int) ;

__attribute__((used)) static gboolean areaWidget_leave_notify_event(GtkWidget *w, GdkEventCrossing *e)
{
 return onCrossing(areaWidget(w), 1);
}
