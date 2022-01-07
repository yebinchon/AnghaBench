
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* onPositionChanged ) (TYPE_1__*,void*) ;void* onPositionChangedData; } ;
typedef TYPE_1__ uiWindow ;



void uiWindowOnPositionChanged(uiWindow *w, void (*f)(uiWindow *, void *), void *data)
{
 w->onPositionChanged = f;
 w->onPositionChangedData = data;
}
