
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* onToggled ) (TYPE_1__*,void*) ;void* onToggledData; } ;
typedef TYPE_1__ uiCheckbox ;



void uiCheckboxOnToggled(uiCheckbox *c, void (*f)(uiCheckbox *, void *), void *data)
{
 c->onToggled = f;
 c->onToggledData = data;
}
