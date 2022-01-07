
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* onSelected ) (TYPE_1__*,void*) ;void* onSelectedData; } ;
typedef TYPE_1__ uiRadioButtons ;



void uiRadioButtonsOnSelected(uiRadioButtons *r, void (*f)(uiRadioButtons *, void *), void *data)
{
 r->onSelected = f;
 r->onSelectedData = data;
}
