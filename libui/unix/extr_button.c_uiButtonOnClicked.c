
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* onClicked ) (TYPE_1__*,void*) ;void* onClickedData; } ;
typedef TYPE_1__ uiButton ;



void uiButtonOnClicked(uiButton *b, void (*f)(uiButton *, void *), void *data)
{
 b->onClicked = f;
 b->onClickedData = data;
}
