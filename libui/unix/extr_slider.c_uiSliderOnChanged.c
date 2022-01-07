
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* onChanged ) (TYPE_1__*,void*) ;void* onChangedData; } ;
typedef TYPE_1__ uiSlider ;



void uiSliderOnChanged(uiSlider *s, void (*f)(uiSlider *, void *), void *data)
{
 s->onChanged = f;
 s->onChangedData = data;
}
