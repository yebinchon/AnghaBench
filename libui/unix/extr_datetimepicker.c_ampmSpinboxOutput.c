
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int gboolean ;
typedef int GtkSpinButton ;


 int AM_STR ;
 int GTK_ENTRY (int *) ;
 int PM_STR ;
 int TRUE ;
 int gtk_entry_set_text (int ,int ) ;
 int gtk_spin_button_get_value_as_int (int *) ;
 int nl_langinfo (int ) ;

__attribute__((used)) static gboolean ampmSpinboxOutput(GtkSpinButton *sb, gpointer data)
{
 int value;

 value = gtk_spin_button_get_value_as_int(sb);
 if (value == 0)
  gtk_entry_set_text(GTK_ENTRY(sb), nl_langinfo(AM_STR));
 else
  gtk_entry_set_text(GTK_ENTRY(sb), nl_langinfo(PM_STR));
 return TRUE;
}
