
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gpointer ;
typedef int gint ;
typedef int gchar ;
typedef int GtkSpinButton ;


 int GTK_ENTRY (int *) ;
 int GTK_INPUT_ERROR ;
 int TRUE ;
 scalar_t__ g_strtod (int const*,int *) ;
 int * gtk_entry_get_text (int ) ;

__attribute__((used)) static gint hoursSpinboxInput(GtkSpinButton *sb, gpointer ptr, gpointer data)
{
 double *out = (double *) ptr;
 const gchar *text;
 int value;

 text = gtk_entry_get_text(GTK_ENTRY(sb));
 value = (int) g_strtod(text, ((void*)0));
 if (value < 0 || value > 12)
  return GTK_INPUT_ERROR;
 if (value == 12)
  value = 0;
 *out = (double) value;
 return TRUE;
}
