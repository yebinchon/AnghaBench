
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gpointer ;
typedef int gint ;
typedef char gchar ;
typedef int GtkSpinButton ;


 int AM_STR ;
 int GTK_ENTRY (int *) ;
 int GTK_INPUT_ERROR ;
 int PM_STR ;
 int TRUE ;
 char g_ascii_tolower (char const) ;
 char* gtk_entry_get_text (int ) ;
 char const* nl_langinfo (int ) ;

__attribute__((used)) static gint ampmSpinboxInput(GtkSpinButton *sb, gpointer ptr, gpointer data)
{
 double *out = (double *) ptr;
 const gchar *text;
 char firstAM, firstPM;

 text = gtk_entry_get_text(GTK_ENTRY(sb));

 firstAM = g_ascii_tolower(nl_langinfo(AM_STR)[0]);
 firstPM = g_ascii_tolower(nl_langinfo(PM_STR)[0]);
 for (; *text != '\0'; text++)
  if (g_ascii_tolower(*text) == firstAM) {
   *out = 0;
   return TRUE;
  } else if (g_ascii_tolower(*text) == firstPM) {
   *out = 1;
   return TRUE;
  }
 return GTK_INPUT_ERROR;
}
