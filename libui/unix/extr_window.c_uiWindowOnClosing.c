
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* onClosing ) (TYPE_1__*,void*) ;void* onClosingData; } ;
typedef TYPE_1__ uiWindow ;



void uiWindowOnClosing(uiWindow *w, int (*f)(uiWindow *, void *), void *data)
{
 w->onClosing = f;
 w->onClosingData = data;
}
