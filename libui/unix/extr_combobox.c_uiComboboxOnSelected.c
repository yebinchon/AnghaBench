
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* onSelected ) (TYPE_1__*,void*) ;void* onSelectedData; } ;
typedef TYPE_1__ uiCombobox ;



void uiComboboxOnSelected(uiCombobox *c, void (*f)(uiCombobox *c, void *data), void *data)
{
 c->onSelected = f;
 c->onSelectedData = data;
}
