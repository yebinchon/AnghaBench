
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiEntry ;
typedef int GtkWidget ;


 int FALSE ;
 int GTK_ENTRY (int *) ;
 int * finishNewEntry (int *,char*) ;
 int * gtk_entry_new () ;
 int gtk_entry_set_visibility (int ,int ) ;

uiEntry *uiNewPasswordEntry(void)
{
 GtkWidget *e;

 e = gtk_entry_new();
 gtk_entry_set_visibility(GTK_ENTRY(e), FALSE);
 return finishNewEntry(e, "changed");
}
