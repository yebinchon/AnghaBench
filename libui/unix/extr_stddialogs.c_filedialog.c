
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gint ;
typedef int gchar ;
typedef int GtkWindow ;
typedef int GtkWidget ;
typedef int GtkFileChooserAction ;
typedef int GtkFileChooser ;


 int FALSE ;
 int GTK_DIALOG (int *) ;
 int * GTK_FILE_CHOOSER (int *) ;
 scalar_t__ GTK_RESPONSE_ACCEPT ;
 int GTK_RESPONSE_CANCEL ;
 int TRUE ;
 scalar_t__ gtk_dialog_run (int ) ;
 int * gtk_file_chooser_dialog_new (int *,int *,int ,char*,int ,int const*,scalar_t__,int *) ;
 int gtk_file_chooser_get_filename (int *) ;
 int gtk_file_chooser_set_create_folders (int *,int ) ;
 int gtk_file_chooser_set_do_overwrite_confirmation (int *,int ) ;
 int gtk_file_chooser_set_local_only (int *,int ) ;
 int gtk_file_chooser_set_select_multiple (int *,int ) ;
 int gtk_file_chooser_set_show_hidden (int *,int ) ;
 int gtk_widget_destroy (int *) ;
 char* uiUnixStrdupText (int ) ;

__attribute__((used)) static char *filedialog(GtkWindow *parent, GtkFileChooserAction mode, const gchar *confirm)
{
 GtkWidget *fcd;
 GtkFileChooser *fc;
 gint response;
 char *filename;

 fcd = gtk_file_chooser_dialog_new(((void*)0), parent, mode,
  "_Cancel", GTK_RESPONSE_CANCEL,
  confirm, GTK_RESPONSE_ACCEPT,
  ((void*)0));
 fc = GTK_FILE_CHOOSER(fcd);
 gtk_file_chooser_set_local_only(fc, FALSE);
 gtk_file_chooser_set_select_multiple(fc, FALSE);
 gtk_file_chooser_set_show_hidden(fc, TRUE);
 gtk_file_chooser_set_do_overwrite_confirmation(fc, TRUE);
 gtk_file_chooser_set_create_folders(fc, TRUE);
 response = gtk_dialog_run(GTK_DIALOG(fcd));
 if (response != GTK_RESPONSE_ACCEPT) {
  gtk_widget_destroy(fcd);
  return ((void*)0);
 }
 filename = uiUnixStrdupText(gtk_file_chooser_get_filename(fc));
 gtk_widget_destroy(fcd);
 return filename;
}
