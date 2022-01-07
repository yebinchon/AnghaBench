
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int label; } ;
typedef TYPE_1__ uiLabel ;


 int gtk_label_set_text (int ,char const*) ;

void uiLabelSetText(uiLabel *l, const char *text)
{
 gtk_label_set_text(l->label, text);
}
