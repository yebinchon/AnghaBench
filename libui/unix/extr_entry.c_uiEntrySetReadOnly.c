
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int editable; } ;
typedef TYPE_1__ uiEntry ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 int gtk_editable_set_editable (int ,int ) ;

void uiEntrySetReadOnly(uiEntry *e, int readonly)
{
 gboolean editable;

 editable = TRUE;
 if (readonly)
  editable = FALSE;
 gtk_editable_set_editable(e->editable, editable);
}
