
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkButton ;


 int FALSE ;
 int TRUE ;
 int g_timeout_add (int,int ,int *) ;
 int gtk_widget_set_sensitive (int ,int ) ;
 int pbarStarted ;
 scalar_t__ pbarValue ;
 int pulseTable ;
 int startTable ;

__attribute__((used)) static void onStartTableClicked(GtkButton *button, gpointer data)
{
 pbarStarted = TRUE;
 pbarValue = 0;

 gtk_widget_set_sensitive(startTable, FALSE);
 g_timeout_add(100, pulseTable, ((void*)0));
}
