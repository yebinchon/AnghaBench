
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int textview; } ;
typedef TYPE_1__ uiMultilineEntry ;


 scalar_t__ FALSE ;
 scalar_t__ gtk_text_view_get_editable (int ) ;

int uiMultilineEntryReadOnly(uiMultilineEntry *e)
{
 return gtk_text_view_get_editable(e->textview) == FALSE;
}
