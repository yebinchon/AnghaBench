
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int button; } ;
typedef TYPE_1__ uiButton ;


 int gtk_button_get_label (int ) ;
 char* uiUnixStrdupText (int ) ;

char *uiButtonText(uiButton *b)
{
 return uiUnixStrdupText(gtk_button_get_label(b->button));
}
