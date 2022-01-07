
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; } ;
typedef TYPE_1__ uiEntry ;


 int gtk_entry_get_text (int ) ;
 char* uiUnixStrdupText (int ) ;

char *uiEntryText(uiEntry *e)
{
 return uiUnixStrdupText(gtk_entry_get_text(e->entry));
}
