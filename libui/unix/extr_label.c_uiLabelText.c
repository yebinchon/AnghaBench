
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int label; } ;
typedef TYPE_1__ uiLabel ;


 int gtk_label_get_text (int ) ;
 char* uiUnixStrdupText (int ) ;

char *uiLabelText(uiLabel *l)
{
 return uiUnixStrdupText(gtk_label_get_text(l->label));
}
