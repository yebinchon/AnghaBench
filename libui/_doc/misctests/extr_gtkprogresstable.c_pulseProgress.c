
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gboolean ;


 int GTK_PROGRESS_BAR (int ) ;
 int TRUE ;
 int gtk_progress_bar_pulse (int ) ;
 int progressbar ;

__attribute__((used)) static gboolean pulseProgress(gpointer data)
{
 gtk_progress_bar_pulse(GTK_PROGRESS_BAR(progressbar));
 return TRUE;
}
