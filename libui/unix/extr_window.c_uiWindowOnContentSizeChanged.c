
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* onContentSizeChanged ) (TYPE_1__*,void*) ;void* onContentSizeChangedData; } ;
typedef TYPE_1__ uiWindow ;



void uiWindowOnContentSizeChanged(uiWindow *w, void (*f)(uiWindow *, void *), void *data)
{
 w->onContentSizeChanged = f;
 w->onContentSizeChangedData = data;
}
