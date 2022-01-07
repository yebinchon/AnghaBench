
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;


 int * GTK_WIDGET (int ) ;
 int g_object_new (int ,char*,char*,int *) ;
 int setDateOnly (int ) ;
 int setLabel (int ) ;
 int uiprivDateTimePickerWidget (int *) ;
 int uiprivDateTimePickerWidgetType ;

__attribute__((used)) static GtkWidget *newDP(void)
{
 GtkWidget *w;

 w = GTK_WIDGET(g_object_new(uiprivDateTimePickerWidgetType, "label", "", ((void*)0)));
 setDateOnly(uiprivDateTimePickerWidget(w));
 setLabel(uiprivDateTimePickerWidget(w));
 return w;
}
