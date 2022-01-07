
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gchar ;
typedef int gboolean ;
typedef int GtkSpinButton ;


 int GTK_ENTRY (int *) ;
 int TRUE ;
 int g_free (int *) ;
 int * g_strdup_printf (char*,int) ;
 int gtk_entry_set_text (int ,int *) ;
 int realSpinValue (int *) ;

__attribute__((used)) static gboolean zeroPadSpinbox(GtkSpinButton *sb, gpointer data)
{
 gchar *text;
 int value;

 value = realSpinValue(sb);
 text = g_strdup_printf("%02d", value);
 gtk_entry_set_text(GTK_ENTRY(sb), text);
 g_free(text);
 return TRUE;
}
