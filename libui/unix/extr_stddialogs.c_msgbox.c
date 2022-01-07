
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWindow ;
typedef int GtkWidget ;
typedef int GtkMessageType ;
typedef int GtkButtonsType ;


 int GTK_DIALOG (int *) ;
 int GTK_DIALOG_MODAL ;
 int GTK_MESSAGE_DIALOG (int *) ;
 int gtk_dialog_run (int ) ;
 int gtk_message_dialog_format_secondary_text (int ,char*,char const*) ;
 int * gtk_message_dialog_new (int *,int ,int ,int ,char*,char const*) ;
 int gtk_widget_destroy (int *) ;

__attribute__((used)) static void msgbox(GtkWindow *parent, const char *title, const char *description, GtkMessageType type, GtkButtonsType buttons)
{
 GtkWidget *md;

 md = gtk_message_dialog_new(parent, GTK_DIALOG_MODAL,
  type, buttons,
  "%s", title);
 gtk_message_dialog_format_secondary_text(GTK_MESSAGE_DIALOG(md), "%s", description);
 gtk_dialog_run(GTK_DIALOG(md));
 gtk_widget_destroy(md);
}
