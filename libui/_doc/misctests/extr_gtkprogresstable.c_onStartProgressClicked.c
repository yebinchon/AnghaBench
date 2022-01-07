
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkButton ;


 int FALSE ;
 int g_timeout_add (int,int ,int *) ;
 int gtk_widget_set_sensitive (int ,int ) ;
 int pulseProgress ;
 int startProgress ;

__attribute__((used)) static void onStartProgressClicked(GtkButton *button, gpointer data)
{
 gtk_widget_set_sensitive(startProgress, FALSE);
 g_timeout_add(100, pulseProgress, ((void*)0));
}
