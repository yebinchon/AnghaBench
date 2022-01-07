
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int editable; } ;
typedef TYPE_1__ uiEntry ;


 scalar_t__ FALSE ;
 scalar_t__ gtk_editable_get_editable (int ) ;

int uiEntryReadOnly(uiEntry *e)
{
 return gtk_editable_get_editable(e->editable) == FALSE;
}
