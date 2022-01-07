
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* onChanged ) (TYPE_1__*,void*) ;void* onChangedData; } ;
typedef TYPE_1__ uiEntry ;



void uiEntryOnChanged(uiEntry *e, void (*f)(uiEntry *, void *), void *data)
{
 e->onChanged = f;
 e->onChangedData = data;
}
