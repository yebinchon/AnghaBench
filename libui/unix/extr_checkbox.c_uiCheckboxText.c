
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int button; } ;
typedef TYPE_1__ uiCheckbox ;


 int gtk_button_get_label (int ) ;
 char* uiUnixStrdupText (int ) ;

char *uiCheckboxText(uiCheckbox *c)
{
 return uiUnixStrdupText(gtk_button_get_label(c->button));
}
