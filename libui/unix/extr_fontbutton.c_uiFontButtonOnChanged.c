
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* onChanged ) (TYPE_1__*,void*) ;void* onChangedData; } ;
typedef TYPE_1__ uiFontButton ;



void uiFontButtonOnChanged(uiFontButton *b, void (*f)(uiFontButton *, void *), void *data)
{
 b->onChanged = f;
 b->onChangedData = data;
}
